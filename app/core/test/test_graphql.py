from django.test import TestCase
from core.get_graphql import GraphQL
from core.models import Repository
# import json

#print(Repository.objects.all())

class GraphqlTests(TestCase):

    def test_execute_graphql(self):
        '''Test if graphql is available'''

        # graphql_obj = GraphQL()
        # json_result = graphql_obj.get_result()
        # print(Repository.objects.all())
        # print(json_result['data']['search']['edges'][0]['node'] \
        #                 ['nameWithOwner'])
        # with open('../app/core/result.json',encoding='utf-8') as f:
        #    json_result = json.load(f)

        # print(type(json_result['data']['search']['edges'][0]\
        #                      ['node']['databaseId']))
        # print(json_result)
        # model_obj = Repository()
        # print(model_obj._meta.db_table)
        # print(model_obj.id, model_obj.name_owner)
        # model_obj.save()
        '''
        model_obj.database_id = 12345678
        model_obj.name_owner = 'vuejs/vue'
        model_obj.avatar_url = 'http://xxx'
        model_obj.resource_path = 'http://xxx'
        model_obj.language = 'Python'
        model_obj.star_count = 30000
        model_obj.save()
        print(model_obj.id, model_obj.name_owner, model_obj.star_count)
        '''
        '''
        model_obj.database_id = json_result['data']['search']['edges'][0]\
                                           ['node']['databaseId']
        model_obj.name_owner = json_result['data']['search']['edges'][0]\
                                           ['node']['nameWithOwner']
        model_obj.avatar_url = json_result['data']['search']['edges'][0]\
                                           ['node']['owner']['avatarUrl']
        model_obj.resource_path = json_result['data']['search']['edges'][0]\
                                           ['node']['owner']['resourcePath']
        model_obj.language = json_result['data']['search']['edges'][0]\
                                           ['node']['primaryLanguage']['name']
        model_obj.star_count = json_result['data']['search']['edges'][0]\
                                           ['node']['stargazers']['totalCount']
        '''

        # print(model_obj.id, model_obj.name_owner)
        #print(model_obj.objects.all())
