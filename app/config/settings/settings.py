import os
from .base_settings import *
import dj_database_url
import djcelery


DEBUG = False
ALLOWED_HOSTS = ['*']

#secret key settings
SECRET_KEY = os.environ['SECRET_KEY']
GITHUB_SECRET_KEY = os.environ['GITHUB_SECRET_KEY']

#e-mail settings
ADMINS = [('hayatek', 'over35man@gmail.com')]
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_HOST_USER = os.environ['EMAIL_ADDRESS']
EMAIL_HOST_PASSWORD = os.environ['PASS']
EMAIL_PORT = 587
EMAIL_USE_TLS = True
SERVER_EMAIL = EMAIL_HOST_USER

#https settings
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

# Logging
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'handlers': {
        'console': {
            'class': 'logging.StreamHandler',
        },
    },
    'loggers': {
        'django': {
            'handlers': ['console'],
             'level': os.getenv('DJANGO_LOG_LEVEL', 'DEBUG'),
        },
    },
}

# update db settings
db_from_env = dj_database_url.config(conn_max_age=400)
DATABASES['default'].update(db_from_env)

#Whitenoise settings
STATICFILES_STORAGE = 'whitenoise.storage.CompressedStaticFilesStorage'

# Celery config
djcelery.setup_loader()
BROKER_URL = os.environ.get("CLOUDAMQP_URL", "django://")
BROKER_POOL_LIMIT = 1
BROKER_CONNECTION_MAX_RETRIES = None

CELERY_TASK_SERIALIZER = "json"
CELERY_ACCEPT_CONTENT = ["json", "msgpack"]
CELERYBEAT_SCHEDULER = 'djcelery.schedulers.DatabaseScheduler'

if BROKER_URL == "django://":
    INSTALLED_APPS += ("kombu.transport.django",)
