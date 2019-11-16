from django.shortcuts import render


def about_ja_view(request):
    return render(request, 'core/about_ja.html')

def about_en_view(request):
    return render(request, 'core/about_en.html')

def terms_ja_view(request):
    return render(request, 'core/terms_ja.html')

def terms_en_view(request):
    return render(request, 'core/terms_en.html')
