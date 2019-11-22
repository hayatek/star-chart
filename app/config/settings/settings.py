import os
from .base_settings import *
import django_heroku


DEBUG = False
PRODUCTION = True

# Activate Django-Heroku.
django_heroku.settings(locals())
