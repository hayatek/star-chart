from django import forms
from core.models import Repository

class PostForm(forms.Form):
    repository_1 = forms.CharField(
        label='リポジトリ(1)', max_length=40,required=True,
                                error_messages={'required': '必須項目です。'})
    repository_2 = forms.CharField(
        label='リポジトリ(2)', max_length=40,required=False)
    repository_3 = forms.CharField(
        label='リポジトリ(3)', max_length=40,required=False)

    def clean_repository_1(self):
        repository_1 = self.cleaned_data['repository_1']
        self.check_item_exists(repository_1)
        return repository_1

    def clean_repository_2(self):
        repository_2 = self.cleaned_data['repository_2']
        self.check_item_exists(repository_2)
        return repository_2

    def clean_repository_3(self):
        repository_3 = self.cleaned_data['repository_3']
        self.check_item_exists(repository_3)
        return repository_3

    def check_item_exists(self, repository_name):
        if Repository.objects.filter(name_owner__icontains=
                                        repository_name).exists():
            pass
        else:
            raise forms.ValidationError('リポジトリが存在しません。')
