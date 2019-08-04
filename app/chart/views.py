from django.shortcuts import render, redirect
from .models import Combination
from core.models import Repository
from .forms import PostForm
from django.utils import timezone


def chart_new(request):
    if request.method == 'POST':
        form = PostForm(request.POST)
        if form.is_valid():
            repository_1_wk = form.cleaned_data['repository_1']
            repository_2_wk = form.cleaned_data['repository_2']
            repository_3_wk = form.cleaned_data['repository_3']

            query_set_1 = get_database_id(repository_1_wk)

            if repository_2_wk:
                query_set_2 = get_database_id(repository_2_wk)
            else:
                query_set_2 = ''

            if repository_3_wk:
                query_set_3 = get_database_id(repository_3_wk)
            else:
                query_set_3 = ''

            id_list = []
            if query_set_2 == '' and query_set_3 == '':
                id_list = [query_set_1[0].database_id,
                           0,
                           0]
            elif query_set_2 == '' and query_set_3 != '':
                id_list = [query_set_1[0].database_id,
                           0,
                           query_set_3[0].database_id]
            elif query_set_2 != '' and query_set_3 == '':
                id_list = [query_set_1[0].database_id,
                           query_set_2[0].database_id,
                           0]
            elif query_set_2 != '' and query_set_3 != '':
                id_list = [query_set_1[0].database_id,
                           query_set_2[0].database_id,
                           query_set_3[0].database_id]

            #print('id_list=', id_list)

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
                #print('pk=',combination_query.pk)
            else:
                Combination.objects.create(
                    database_id1=id_list[0],
                    database_id2=id_list[1],
                    database_id3=id_list[2],
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
    return render(request, 'chart/index.html', {'form': form})


def get_database_id(repository_name):
    result = Repository.objects.filter(name_owner__icontains=repository_name)
    return result

def get_repository_info(list):
    result_repository_info = []
    for i in range(3):
        if Repository.objects.filter(database_id=list[i]).exists():
            result_repository_info.append(Repository.objects.filter(
                                                    database_id=list[i]))
        else:
            result_repository_info.append('')
        print('result_repository_info=', result_repository_info)
    return result_repository_info

def chart_detail(request, pk):
    post = Combination.objects.get(pk=pk)
    id_list = []
    id_list = [post.database_id1,
               post.database_id2,
               post.database_id3]

    id_list.sort(reverse=True)

    list_name_owner = []
    list_star_count = []
    repository_list = []

    repository_list = get_repository_info(id_list)
    #print('前repository_list', repository_list)

    for item in repository_list:
        if item != '':
            list_name_owner.append(item[0].name_owner)
            list_star_count.append(item[0].star_count)

    #print('後repository_list', repository_list)

    print('list_name_owner=', list_name_owner)
    print('list_star_count=', list_star_count)
    dict = {}
    dict = {
            "labels": list_name_owner,
            "data": list_star_count
            }
    return render(request, 'chart/chart.html', {'dict': dict})
