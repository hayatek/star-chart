from django import forms
from core.models import Repository
from django.core import validators
from django.forms.utils import ErrorList
from django.utils.translation import gettext_lazy as _


class PostForm(forms.Form):
    repository_1 = forms.CharField(
        label=_('リポジトリ(1)*'), max_length=40,required=True,
        initial='',
        error_messages={'required': _('必須入力項目です。')},
        help_text=_('例) django/django or あいまい検索'),
        widget=forms.TextInput(attrs={'size': '10'}),
        validators=[validators.MinLengthValidator(2)])

    repository_2 = forms.CharField(
        label=_('リポジトリ(2)*'), max_length=40,required=True,
        initial='',
        error_messages={'required': _('必須入力項目です。')},
        help_text=_('例) pallets/flask or あいまい検索'))
    repository_3 = forms.CharField(
        label=_('リポジトリ(3)'), max_length=40,required=False,
        initial='',
        help_text=_('例) rails/rails or あいまい検索'))


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
            raise forms.ValidationError(_('リポジトリが存在しません。'))

    def clean(self):
        cleaned_data = super(PostForm, self).clean()
        repository_1 = cleaned_data.get("repository_1")
        repository_2 = cleaned_data.get("repository_2")
        repository_3 = cleaned_data.get("repository_3")

        if repository_1 and repository_2:
            if repository_1 == repository_2:
                msg = _('同一リポジトリは指定できません。')
                self._errors['repository_2'] = ErrorList([msg])

        if repository_1 and repository_3:
            if repository_1 == repository_3:
                msg = _('同一リポジトリは指定できません。')
                self._errors['repository_3'] = ErrorList([msg])

        if repository_2 and repository_3:
            if repository_2 == repository_3:
                msg = _('同一リポジトリは指定できません。')
                self._errors['repository_3'] = ErrorList([msg])

        return cleaned_data
