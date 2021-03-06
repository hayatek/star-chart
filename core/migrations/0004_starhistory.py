# Generated by Django 2.2.5 on 2019-09-22 00:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_auto_20190616_0717'),
    ]

    operations = [
        migrations.CreateModel(
            name='StarHistory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name_owner', models.CharField(max_length=100)),
                ('monthly_date', models.DateTimeField(blank=True, null=True)),
                ('star_count_monthly', models.IntegerField(default=0)),
                ('last_updated_at', models.DateTimeField(blank=True, null=True)),
                ('repository_id', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='core.Repository')),
            ],
            options={
                'db_table': 'star_history',
            },
        ),
    ]
