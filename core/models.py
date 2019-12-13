from django.db import models
from django.utils import timezone


class Repository(models.Model):
    class Meta:
        db_table = 'repository'

    database_id = models.IntegerField(default=0)
    name_owner = models.CharField(max_length=100)
    avatar_url = models.CharField(max_length=255, blank=True, null=True)
    resource_path = models.CharField(max_length=255, blank=True, null=True)
    created_at_github = models.DateTimeField(
            blank=True, null=True)
    updated_at_github = models.DateTimeField(
            blank=True, null=True)
    fetched_at = models.DateTimeField(
            default=timezone.now)
    language = models.CharField(max_length=50, blank=True, null=True)
    star_count = models.IntegerField(null=False)

    def __str__(self):
        return self.name_owner


class StarHistory(models.Model):
    class Meta:
        db_table = 'star_history'
        unique_together = ('repository', 'monthly_date')

    repository = models.ForeignKey(Repository,on_delete=models.PROTECT)
    monthly_date = models.DateField(blank=True, null=True)
    star_count_monthly = models.IntegerField(null=False,default=0)
    last_updated_at = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return self.repository.name_owner
