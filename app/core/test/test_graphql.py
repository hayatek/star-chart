from django.test import TestCase
from core.get_graphql import GraphQL


class GraphqlTests(TestCase):

    def test_execute_graphql(self):
        '''Test if graphql is available'''
        graphql_obj = GraphQL()
        graphql_obj.get_result()
