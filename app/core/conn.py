from core.get_graphql import GraphQL
#from core.models import Repository


class UpdateModel:

    """docstring for graphQL"""
    '''
    def __init__(self):
        super(UpdateModel, self).__init__()

    def update_model(self):
        graphql_obj = GraphQL()
        json_result = graphql_obj.get_result()
        print(json_result)
        model_obj = Repository()
        for i in range(1):
            print('i=：{0}'.format(i))
            model_obj.database_id = json_result['data']['search']['edges'][i]\
                                               ['node']['databaseId']
            model_obj.name_owner = json_result['data']['search']['edges'][i]\
                                               ['node']['nameWithOwner']
            model_obj.avatar_url = json_result['data']['search']['edges'][i]\
                                               ['node']['owner']['avatarUrl']
            model_obj.resource_path = json_result['data']['search']['edges'][i]\
                                               ['node']['owner']['resourcePath']
            model_obj.language = json_result['data']['search']['edges'][i]\
                                               ['node']['primaryLanguage']\
                                               ['name']
            model_obj.star_count = json_result['data']['search']['edges'][i]\
                                               ['node']['stargazers']\
                                               ['totalCount']
            model_obj.save()
        '''
