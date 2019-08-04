'''
from django.views.generic import TemplateView
from chart.forms import PostForm


class IndexView(TemplateView):
    template_name = 'chart/index.html'
    form = PostForm()

index = IndexView.as_view()
'''
