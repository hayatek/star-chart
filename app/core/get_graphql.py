import requests
import environ
#from config.local_settings import *


class GetGraphql:
    env = environ.Env()
    headers = env('GITHUB_SECRET_KEY')

    """docstring for graphQL"""
    def __init__(self):
        super(GetGraphql, self).__init__()

    def run_query(self, query, variables):
        request = requests.post('https://api.github.com/graphql',
                                json={'query': query, 'variables': variables},
                                headers=self.headers)
        if request.status_code == 200:
            return request.json()
        else:
            raise Exception("Query failed to run by returning code of {}. {}"\
                            .format(request.status_code, query))

    def get_result(self, first_value, after_value, query_string):
        #first_value = 2
        #after_value = None
        #query_string = "stars:>10000"
        query = '''
            query($first: Int!, $after: String, $query:String!){
            search(first:$first, after:$after, query:$query type: REPOSITORY){
                    edges {
                        node {
                            ... on Repository {
                                databaseId
                                nameWithOwner
                                owner{
                                    avatarUrl
                                    resourcePath
                                }
                                createdAt
                                updatedAt
                                primaryLanguage{
                                    name
                                }
                                stargazers{
                                    totalCount
                                }
                            }
                        }
                    }
                    pageInfo {
                        hasNextPage
                        endCursor
                    }
                }
            }'''

        variables = {
            "first": first_value,
            "after": after_value,
            "query": query_string
        }

        result = self.run_query(query, variables)  # execute query
        return result
