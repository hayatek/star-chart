"""
WSGI config for app project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/howto/deployment/wsgi/
"""

import os
from django.core.wsgi import get_wsgi_application
import threading
import requests
import time


os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings.settings')
application = get_wsgi_application()

def server_awake():
    while True:
        try:
            requests.get("https://django-starchart.herokuapp.com//")
        except Exception as e:
            print(e)
        time.sleep(1200)

t = threading.Thread(target=server_awake)
t.start()
