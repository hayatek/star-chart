from .base_settings import *
import environ


env = environ.Env()
env.read_env(os.path.join(BASE_DIR, '.env'))

SECRET_KEY=env('SECRET_KEY')
GITHUB_SECRET_KEY=env('GITHUB_SECRET_KEY')

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'core',
    'chart',
    'django_celery_beat',
    'django_celery_results',
]

#Local  Celery config for django-celery-beat
CELERY_RESULT_BACKEND = 'django-db'
CELERY_CACHE_BACKEND = 'django-cache'
ßBROKER_URL = 'redis://redis:6379'
CELERY_IMPORTS = ('core.tasks')

#Local  Celery config for celery beat
BROKER_URL = 'redis://redis:6379'
CELERY_RESULT_BACKEND = 'redis://redis:6379'

#FIXTURE_DIRS = (
#   os.path.join(BASE_DIR, 'fixtures'),
#)
