import os
from .base_settings import *
import django_heroku
import dj_database_url


DEBUG = False
PRODUCTION = True

SECRET_KEY = os.environ.get('SECRET_KEY')
GITHUB_SECRET_KEY = os.environ.get('GITHUB_SECRET_KEY')
ALLOWED_HOSTS = ['*']

# Activate Django-Heroku.
django_heroku.settings(locals())

# update db settings
db_from_env = dj_database_url.config(conn_max_age=400)
DATABASES['default'].update(db_from_env)
