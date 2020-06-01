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
    #print('update_database!')
    graphql_obj = GetGraphql()
    first_value = 100
    after_value = None
    query_string = "stars:>10000"
    has_next_page = True
    record_number = 1
    #print('GetGraphql finished!!!')
    while (has_next_page) and (record_number <= 1000):
        #print('has_next_page!!!')
        json_result = graphql_obj.get_result(first_value, after_value, query_string)
        has_next_page = json_result['data']['search']['pageInfo']['hasNextPage']
        after_value = json_result['data']['search']['pageInfo']['endCursor']
        df = pd.io.json.json_normalize(json_result['data']['search']['edges'])
        del json_result
        #print('df.length=',len(df))

        for i in range(len(df)):
            if Repository.objects.filter(
                            database_id=df.at[i,'node.databaseId']).exists():
                try:
                    #print('DB update!!')
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

            del repository_query

            #if repository_updated.fetched_at.day == 31:
            if datetime.datetime.now().day == 1:
                if Repository.objects.filter(
                                database_id=df.at[i,'node.databaseId']).exists():
                    repository_updated = Repository.objects.get(
                                database_id = df.at[i,'node.databaseId'])
                try:
                    StarHistory.objects.create(
                        repository = repository_updated,
                        monthly_date = repository_updated.fetched_at.date(),
                        star_count_monthly = repository_updated.star_count,
                        last_updated_at = datetime.datetime.now(
                                datetime.timezone(datetime.timedelta(hours=9))))
                except Exception as e:
                    print('history_create_error',e)

            del repository_updated
            record_number = record_number + 1
            #print('record_number=',record_number)
