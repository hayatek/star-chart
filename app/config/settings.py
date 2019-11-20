import os
from .base_settings import *


DEBUG = False
PRODUCTION = True
SECRET_KEY = env('SECRET_KEY')
GITHUB_SECRET_KEY = env('GITHUB_SECRET_KEY')
