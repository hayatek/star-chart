from __future__ import absolute_import, unicode_literals
from celery import shared_task
from django.utils import timezone
from core.get_graphql import GetGraphql
from django.db import models
from django.db import models
from .models import Repository
import pandas as pd
import json
import time


@shared_task
def hello():
    print('excute_get_graphql!!!')
    '''
    #print('count=' ,Repository.objects.count())
    graphql_obj = GetGraphql()
    first_value = 100
    after_value = None
    query_string = "stars:>10000"
    has_next_page = True
    j = 0
    while has_next_page:
        print('has_next_page!!!')
        json_result = graphql_obj.get_result(first_value, after_value, query_string)
        #print(json_result)
        #json_result_s = sorted(json_result)
        #print(json_result_s)
        #print(len(json_result['data']['search']['edges']))
        has_next_page = json_result['data']['search']['pageInfo']['hasNextPage']
        after_value = json_result['data']['search']['pageInfo']['endCursor']
        df = pd.io.json.json_normalize(json_result['data']['search']['edges'])

        #print('df=',df)
        #print(df.columns)
        #print('行0=：{0}'.format(df.at[0,"node.nameWithOwner"]))

        for i in range(len(df)):
            #print('i=：{0}'.format(i))
            #print('i,0=：{0}'.format(df.iat[i,0]))
            #print('i,6=：{0}'.format(df.iat[i,6]))
            try:
                Repository.objects.create(
                    database_id = df.at[i,'node.databaseId'],
                    name_owner = df.at[i,'node.nameWithOwner'],
                    avatar_url = df.at[i,'node.owner.avatarUrl'],
                    resource_path = df.at[i,'node.owner.resourcePath'],
                    created_at_github = df.at[i,'node.createdAt'],
                    updated_at_github = df.at[i,'node.updatedAt'],
                    language = df.at[i,'node.primaryLanguage.name'],
                    star_count = df.at[i,'node.stargazers.totalCount'])
            except Exception as e:
                print('error')
        #has_next_page = False
        j = j + 1
        if j >2000:
            break
        '''
