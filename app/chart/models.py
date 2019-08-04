from django.db import models
from django.utils import timezone


class Combination(models.Model):
    class Meta:
        db_table = 'combination'

    database_id1 = models.IntegerField(default=0)
    database_id2 = models.IntegerField(default=0,blank=True, null=True)
    database_id3 = models.IntegerField(default=0,blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    access_count = models.IntegerField(default=0)
