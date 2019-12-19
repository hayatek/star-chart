from django.shortcuts import render, redirect
from .models import Combination
from core.models import Repository, StarHistory
from .forms import PostForm
from django.utils import timezone
from django.db.models import Max


def chart_new(request):
    access = Combination.objects.order_by('-access_count')[:10]
    recently = Combination.objects.order_by('-updated_at')[:10]
    last_fetched_date = Repository.objects.latest('fetched_at').fetched_at

    if request.method == 'POST':
        form = PostForm(request.POST)
        if form.is_valid():
            id_list = []

            print('レポ1引数=',form.cleaned_data['repository_1'])
            print('レポ2引数=',form.cleaned_data['repository_2'])

            id_list.append(get_database_id(form.cleaned_data['repository_1'])[0].database_id)

            if form.cleaned_data['repository_2']:
                id_list.append(get_database_id(form.cleaned_data['repository_2'])[0].database_id)
            else:
                id_list.append(0)

            if form.cleaned_data['repository_3']:
                id_list.append(get_database_id(form.cleaned_data['repository_3'])[0].database_id)
            else:
                id_list.append(0)

            id_list.sort(reverse=True)

            if Combination.objects.filter(
                database_id1=id_list[0],
                database_id2=id_list[1],
                database_id3=id_list[2]).exists():
                pass
            else:
                Comb_repo_list = []
                Comb_repo_list = get_repository_info(id_list)
                for i in range(3):
                    if id_list[i] == 0:
                        Comb_repo_list.append( \
                            {'name_owner': '', 'avatar_url': ''})


                Combination.objects.create(
                    database_id1 = id_list[0],
                    name_owner1 = Comb_repo_list[0]['name_owner'],
                    avatar_url1 = Comb_repo_list[0]['avatar_url'],
                    database_id2 = id_list[1],
                    name_owner2 = Comb_repo_list[1]['name_owner'],
                    avatar_url2 = Comb_repo_list[1]['avatar_url'],
                    database_id3 =id_list[2],
                    name_owner3 = Comb_repo_list[2]['name_owner'],
                    avatar_url3 = Comb_repo_list[2]['avatar_url'],
                    created_at = timezone.now(),
                    updated_at = timezone.now(),
                    access_count = 1
                )

            updated_query = Combination.objects.filter(
                                database_id1=id_list[0],
                                database_id2=id_list[1],
                                database_id3=id_list[2])

            combination_pk = updated_query[0].pk
            return redirect('chart:chart_detail', pk=combination_pk)
    else:
        form = PostForm()
    return render(request, 'chart/index.html', \
         {'form': form,
          'access' : access,
          'recently' : recently,
          'last_fetched_date' : last_fetched_date})

def chart_detail(request, pk):
    id_list = []
    repository_list = []
    dict = []

    last_fetched_date = Repository.objects.latest('fetched_at').fetched_at
    post = Combination.objects.get(pk=pk)
    id_list = [post.database_id1,
               post.database_id2,
               post.database_id3]

    id_list.sort(reverse=True)

    if Combination.objects.filter(
        database_id1=id_list[0],
        database_id2=id_list[1],
        database_id3=id_list[2]).exists():
            combination_query = Combination.objects.get(
                                    database_id1=id_list[0],
                                    database_id2=id_list[1],
                                    database_id3=id_list[2])

            combination_query.updated_at = timezone.now()
            combination_query.access_count += 1
            combination_query.save()

    repository_list = get_repository_info(id_list)

    dict = sorted(repository_list,
                        key=lambda x:x['star_count'], reverse=True)

    history_date = []
    history_query = []
    merged_query = []
    for item in dict:
        if StarHistory.objects.select_related().filter(repository=item['id']).exists():
            history_date = StarHistory.objects.values('monthly_date').filter(repository=item['id'])
            history_query = StarHistory.objects.values('monthly_date','star_count_monthly').filter(repository=item['id'])
            merged_query.append(history_query)

    return render(request, 'chart/chart.html',
                {'dict': dict,
                 'last_fetched_date' : last_fetched_date,
                 'history_date' : history_date,
                 'merged_query': merged_query})

def get_database_id(repository_name):
    if Repository.objects.filter(name_owner=repository_name).exists():
        result = Repository.objects.filter(name_owner=repository_name)
    else:
        result = Repository.objects.order_by('-star_count').filter(name_owner__icontains=repository_name)
    return result

def get_repository_info(id_list):
    result_repository_info = []
    for item in id_list:
        if Repository.objects.filter(database_id=item).exists():
            result_repository_info.append(Repository.objects.values().
            filter(database_id=item)[0])
    return result_repository_info
