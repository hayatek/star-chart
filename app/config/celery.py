from __future__ import absolute_import, unicode_literals
import os
from config.celery import Celery

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings.settings')

app = Celery('config')
app.config_from_object('django.conf:settings')
app.autodiscover_tasks()


@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))
