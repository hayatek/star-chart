from .base_settings import *


env = environ.Env()
env.read_env(os.path.join(BASE_DIR, '.env'))

SECRET_KEY = env('SECRET_KEY')
GITHUB_SECRET_KEY = env('GITHUB_SECRET_KEY')
