import os
from .base_settings import *
#import django_heroku
import dj_database_url


DEBUG = False
#PRODUCTION = True

SECRET_KEY=os.environ['SECRET_KEY']
GITHUB_SECRET_KEY=os.environ['GITHUB_SECRET_KEY']
ALLOWED_HOSTS = ['*']
ADMINS = [('hayatek', 'over35man@gmail.com')]
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_HOST_USER = 'over35man@gmail.com'
EMAIL_HOST_PASSWORD =os.environ['PASS']
EMAIL_PORT = 587
EMAIL_USE_TLS = True
SERVER_EMAIL = EMAIL_HOST_USER

# Activate Django-Heroku.
#django_heroku.settings(locals())

# update db settings
db_from_env = dj_database_url.config(conn_max_age=400)
DATABASES['default'].update(db_from_env)

#Whitenoise settings
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'
