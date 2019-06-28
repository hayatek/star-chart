from django.db import models
from django.utils import timezone
from core.get_graphql import GraphQL
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
def allkeys(a):
    print('Allkeys')
    for key,value in a.items():
        yield key
        if isinstance(value, dict):
            yield from allkeys(value)
        else:
            print('value=：{0}'.format(type(value)))

def EnumKeys(**kwargs):
    for key,value in kwargs.items():
        print(key)
        if isinstance(kwargs[key], dict):
            EnumKeys(**kwargs[key])
        else:
            print('value=：{0}'.format(value))
'''


#graphql_obj = GraphQL()
#json_result_row = graphql_obj.get_result()
#print(json_result_row)
with open('../app/core/result.json',encoding='utf-8') as f:
    json_result = json.load(f)


#l_target = json_result['DATA']
#print(l_target)
#print(type(l_target))
#df = pd.io.json.json_normalize(json_result)
#print(df)


#r = list(allkeys(json_result))
#print(r)

#df = pd.io.json.json_normalize(json_result)

#print(df)



#model_obj = Repository()
#for i in range(3):
#print('i=：{0}'.format(i))
'''
model_obj = Repository.objects.create(
    database_id = json_result['data']['search']['edges'][i]\
                                       ['node']['databaseId'],
    name_owner = json_result['data']['search']['edges'][i]\
                                       ['node']['nameWithOwner'],
    avatar_url = json_result['data']['search']['edges'][i]\
                                       ['node']['owner']['avatarUrl'],
    resource_path = json_result['data']['search']['edges'][i]\
                                       ['node']['owner']['resourcePath'],
    language = json_result['data']['search']['edges'][i]\
                                       ['node']['primaryLanguage']['name'],
    star_count = json_result['data']['search']['edges'][i]\
                                       ['node']['stargazers']['totalCount'])
'''


#model_obj.save()
#print('name_owner=：{0}'.format(model_obj.name_owner))
#print(Repository.objects.all())
