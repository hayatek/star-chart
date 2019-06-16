from django.db import models
from django.utils import timezone


class Repository(models.Model):
    class Meta:
        db_table = 'repository'

    database_id = models.IntegerField(null=False)
    name_owner = models.CharField(max_length=100)
    avatar_url = models.CharField(max_length=255)
    resource_path = models.CharField(max_length=255)
    created_at_github = models.DateTimeField(
            blank=True, null=True)
    updated_at_github = models.DateTimeField(
            blank=True, null=True)
    fetched_at = models.DateTimeField(
            default=timezone.now)
    language = models.CharField(max_length=50)
    star_count = models.IntegerField(null=False)

    def __str__(self):
        return self.name_owner
