# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2016-08-24 17:09


from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stations', '0007_auto_20160718_1028'),
    ]

    operations = [
        migrations.AlterField(
            model_name='stationmetadata',
            name='name',
            field=models.CharField(default=b'My station', help_text='station name', max_length=255),
        ),
    ]
