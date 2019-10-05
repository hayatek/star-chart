from django.contrib import admin
from django.urls import path, include
#from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('chart.urls', namespace='chart')),
    path('i18n/', include('django.conf.urls.i18n')),
]
