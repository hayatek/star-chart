from django.contrib import admin
from django.urls import path, include


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('chart.urls', namespace='chart')),
    path('', include('core.urls', namespace='core')),
    path('i18n/', include('django.conf.urls.i18n')),
]
