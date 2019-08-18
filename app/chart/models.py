from django.db import models
from django.utils import timezone


class Combination(models.Model):
    class Meta:
        db_table = 'combination'

    database_id1 = models.IntegerField(default=0)
    name_owner1 = models.CharField(default='', \
                            max_length=100, blank=True, null=True)
    avatar_url1 = models.CharField(default='', \
                            max_length=255, blank=True, null=True)
    database_id2 = models.IntegerField(default=0,blank=True, null=True)
    name_owner2 = models.CharField(default='', \
                            max_length=100, blank=True, null=True)
    avatar_url2 = models.CharField(default='', \
                            max_length=255, blank=True, null=True)
    database_id3 = models.IntegerField(default=0,blank=True, null=True)
    name_owner3 = models.CharField(default='', \
                            max_length=100, blank=True, null=True)
    avatar_url3 = models.CharField(default='', \
                            max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    access_count = models.IntegerField(default=0)
