# Generated by Django 2.2.2 on 2019-06-16 06:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='repository',
            name='avatar_url',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='repository',
            name='database_id',
            field=models.IntegerField(max_length=20),
        ),
        migrations.AlterField(
            model_name='repository',
            name='language',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='repository',
            name='resource_path',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
