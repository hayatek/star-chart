import os
from .base_settings import *
import dj_database_url


DEBUG = False
ALLOWED_HOSTS = ['*']

#secret key settings
SECRET_KEY = os.environ['SECRET_KEY']
GITHUB_SECRET_KEY = os.environ['GITHUB_SECRET_KEY']

#e-mail settings
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_HOST_USER = os.environ['EMAIL_ADDRESS']
EMAIL_HOST_PASSWORD = os.environ['PASS']
EMAIL_PORT = 587
EMAIL_USE_TLS = True
SERVER_EMAIL = EMAIL_HOST_USER

#https settings
#SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

# update db settings
db_from_env = dj_database_url.config(conn_max_age=400)
DATABASES['default'].update(db_from_env)

#Whitenoise settings
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'
