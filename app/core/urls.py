from django.urls import path
from .views import about_ja_view, about_en_view, terms_ja_view, terms_en_view


app_name = 'core'
urlpatterns = [
    path('about/ja', about_ja_view, name='about_ja_view'),
    path('about/en', about_en_view, name='about_en_view'),
    path('terms/ja', terms_ja_view, name='terms_ja_view'),
    path('terms/en', terms_en_view, name='terms_en_view')
]
