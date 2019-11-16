from django.test import TestCase
from core.models import Repository,StarHistory
import datetime


class DateTest(TestCase):
    fixtures = ['repository','starhistory']

    def test_subtract_date(self):
        #print('StarHistory count=',StarHistory.objects.count())

        id_list = [28457823,11730342,177736533]

        id_list.sort(reverse=True)

        repository_list = self.get_repository_info(id_list)

        print('repository_list=',repository_list[0]['id'])

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
        print('history_date=',history_date)
        print('merged_query=',merged_query)
        '''
                chart_data = []
                label_data = []
                for query_item in history_query:
                    chart_data.append(query_item['monthly_date'])
                    label_data.append(query_item['star_count_monthly'])
            chart_list.append(chart_data)
            label_list.append(label_data)
            print('chart_list=',chart_list)
            print('label_list=',label_list)
        '''





        '''
        print('result_history_info=',result_history_info)

        print('result_history_info[0]=',result_history_info[0])


        for i in result_history_info[0]:
            print('queryitem_date=',i['monthly_date'])
            print('queryitem_count=',i['star_count_monthly'])
        '''
        #print('result_history_info[0][monthly_date]=',str(result_history_info[0]['monthly_date']))
        #print('result_history_info[0][star_count_monthly]=',result_history_info[0]['star_count_monthly'])



        #history_list = StarHistory.objects.select_related().filter(repository=repository_list.id)

        #print('history_list=',history_list)

        #history_list = self.get_history_info(id_list)


        '''
        dict = sorted(repository_list,
                            key=lambda x:x['star_count'], reverse=True)

        print('dict=',dict)
        '''


        #print('Repository count=',Repository.objects.count())


    def get_repository_info(self, id_list):
        print('get_repo id_list=',id_list)
        print('type of id_list[0]=',type(id_list[0]))
        result_repository_info = []
        for item in id_list:
            if Repository.objects.filter(database_id=item).exists():
                result_repository_info.append(Repository.objects.values().
                filter(database_id=item)[0])
        return result_repository_info


    '''
    def get_history_info(self, id_list):
        print('get_repo id_list=',id_list)
        print('type of id_list[0]=',type(id_list[0]))
        result_history_info = []
        for item in id_list:
            if StarHistory.objects.filter(repository_list.database_id=item).exists():
                result_history_info.append(StarHistory.objects.values().
                filter(repository_list.database_id=item)[0])
        return result_history_info
    '''
