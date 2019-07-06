from django.db import models
from django.utils import timezone
from core.get_graphql import GetGraphql
import pandas as pd
import json


class Repository(models.Model):
    class Meta:
        db_table = 'repository'

    database_id = models.IntegerField(default=0)
    name_owner = models.CharField(max_length=100)
    avatar_url = models.CharField(max_length=255, blank=True, null=True)
    resource_path = models.CharField(max_length=255, blank=True, null=True)
    created_at_github = models.DateTimeField(
            blank=True, null=True)
    updated_at_github = models.DateTimeField(
            blank=True, null=True)
    fetched_at = models.DateTimeField(
            default=timezone.now)
    language = models.CharField(max_length=50, blank=True, null=True)
    star_count = models.IntegerField(null=False)

    def __str__(self):
        return self.name_owner

'''
graphql_obj = GetGraphql()
#model_obj = Repository()
first_value = 100
after_value = None
query_string = "stars:>10000"
has_next_page = True
j = 0
while has_next_page:
    json_result = graphql_obj.get_result(first_value, after_value, query_string)
    #print(json_result)
    #json_result_s = sorted(json_result)
    #print(json_result_s)

    #print(len(json_result['data']['search']['edges']))
    has_next_page = json_result['data']['search']['pageInfo']['hasNextPage']
    after_value = json_result['data']['search']['pageInfo']['endCursor']
    df = pd.io.json.json_normalize(json_result['data']['search']['edges'])
    #print(df.columns)
    #print('行0=：{0}'.format(df.at[0,"node.nameWithOwner"]))
    for i in range(len(df)):
        #print('i=：{0}'.format(i))
        #print('i,0=：{0}'.format(df.iat[i,0]))
        #print('i,6=：{0}'.format(df.iat[i,6]))
        model_obj = Repository.objects.create(
            database_id = df.at[i,'node.databaseId'],
            name_owner = df.at[i,'node.nameWithOwner'],
            avatar_url = df.at[i,'node.owner.avatarUrl'],
            resource_path = df.at[i,'node.owner.resourcePath'],
            created_at_github = df.at[i,'node.createdAt'],
            updated_at_github = df.at[i,'node.updatedAt'],
            language = df.at[i,'node.primaryLanguage.name'],
            star_count = df.at[i,'node.stargazers.totalCount'])
    #has_next_page = False
    j = j + 1
    if j >2000:
        break
'''
#model_obj.save()
#model_obj.save()
#print(Repository.objects.all())

#print(type(json_result))

#json_result = json.load(json_result_row)

'''
with open('../app/core/result.json',encoding='utf-8') as f:
    json_result = json.load(f)
'''
