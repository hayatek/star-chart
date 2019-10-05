from __future__ import absolute_import, unicode_literals
from celery import shared_task
from django.utils import timezone
import datetime
from core.get_graphql import GetGraphql
from .models import Repository, StarHistory
import pandas as pd
import json


@shared_task
def update_database():
    print('update_database!')

    graphql_obj = GetGraphql()
    first_value = 100
    after_value = None
    query_string = "stars:>10000"
    has_next_page = True
    j = 0
    print('Graphql!!!')
    while has_next_page:
        print('has_next_page!!!')
        json_result = graphql_obj.get_result(first_value, after_value, query_string)
        has_next_page = json_result['data']['search']['pageInfo']['hasNextPage']
        after_value = json_result['data']['search']['pageInfo']['endCursor']
        df = pd.io.json.json_normalize(json_result['data']['search']['edges'])

        for i in range(1000):
            #print('i=：{0}'.format(i))
            #print('i,0=：{0}'.format(df.iat[i,0]))
            #print('i,6=：{0}'.format(df.iat[i,6]))
            '''
            if Repository.objects.filter(
                            database_id=df.at[i,'node.databaseId']).exists():
                try:
                    repository_query = Repository.objects.get(
                                database_id = df.at[i,'node.databaseId'])
                    repository_query.updated_at_github = \
                                df.at[i,'node.updatedAt']
                    repository_query.fetched_at = datetime.datetime.now(
                                datetime.timezone(datetime.timedelta(hours=9)))
                    repository_query.star_count = \
                                df.at[i,'node.stargazers.totalCount']
                    repository_query.save()
                except Exception as e:
                    print('update_error',e)
            else:
                try:
                    #print('DB create!!')
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
                    print('create_error',e)
                '''

            repository_updated = Repository.objects.get(
                        database_id = df.at[i,'node.databaseId'])

            #print('fetched_at.day',repository_updated.fetched_at.day)
            if repository_updated.fetched_at.day == 1:
                try:
                    StarHistory.objects.create(
                        repository = repository_updated,
                        monthly_date = repository_updated.fetched_at.date(),
                        star_count_monthly = repository_updated.star_count,
                        last_updated_at = datetime.datetime.now(
                                datetime.timezone(datetime.timedelta(hours=9))))
                except Exception as e:
                    print('history_create_error',e)
