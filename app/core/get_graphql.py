import requests
from app.local_settings import *


class GraphQL:

    headers = GITHUB_SECRET_KEY

    """docstring for graphQL"""
    def __init__(self):
        super(GraphQL, self).__init__()

    def run_query(self, query, variables):
        request = requests.post('https://api.github.com/graphql',
                                json={'query': query, 'variables': variables},
                                headers=self.headers)
        if request.status_code == 200:
            return request.json()
        else:
            raise Exception("Query failed to run by returning code of {}. {}"
                            .format(request.status_code, query))

    def get_result(self):
        query = '''
            query($query_string:String!){
                search( query:$query_string type: REPOSITORY, first: 3){
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
            }
        }'''

        variables = {
            "query_string": "stars:>10000"
        }

        result = self.run_query(query, variables)  # execute query
        return result
