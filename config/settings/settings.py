import os
from .base_settings import *
import dj_database_url


DEBUG = False
ALLOWED_HOSTS = ['*']

# secret key settings
SECRET_KEY = os.environ['SECRET_KEY']
GITHUB_SECRET_KEY = os.environ['GITHUB_SECRET_KEY']

# e-mail settings
#EMAIL_HOST = 'smtp.gmail.com'
#EMAIL_HOST_USER = os.environ['EMAIL_ADDRESS']
#EMAIL_HOST_PASSWORD = os.environ['EMAIL_PASS']
#EMAIL_PORT = 587
#EMAIL_USE_TLS = True
#SERVER_EMAIL = EMAIL_HOST_USER

# https settings
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

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'config.settings.context_processors.get_tracking_id',
            ],
        },
    },
]

GOOGLE_ANALYTICS_KEY = os.environ['GOOGLE_ANALYTICS_KEY']

# db settings
db_from_env = dj_database_url.config(conn_max_age=400)
DATABASES['default'].update(db_from_env)

# Whitenoise settings
STATICFILES_STORAGE = 'whitenoise.storage.CompressedStaticFilesStorage'

# Celery config for production
BROKER_URL = os.environ['REDIS_URL']
CELERY_RESULT_BACKEND = os.environ["REDIS_URL"]
BROKER_POOL_LIMIT = 1
BROKER_CONNECTION_MAX_RETRIES = None
CELERY_IMPORTS = ('core.tasks')
CELERY_BEAT_SCHEDULE = {
    'update_database': {
        'task': 'core.tasks.update_database',
        #'schedule': crontab(minute=3),
        'schedule': crontab(minute=0, hour=15) #must be UTC(JST-9h)
    }
}
