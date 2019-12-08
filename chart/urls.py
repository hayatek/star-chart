from django.urls import path
from .views import chart_new, chart_detail


app_name = 'chart'
urlpatterns = [
    path('', chart_new, name='chart_new'),
    path('chart/<int:pk>', chart_detail, name='chart_detail'),
]
