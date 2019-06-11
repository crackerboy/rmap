# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2018-05-03 10:15


import django.core.validators
from django.db import migrations, models
import re


class Migration(migrations.Migration):

    dependencies = [
        ('stations', '0019_fixture'),
    ]

    operations = [
        migrations.AddField(
            model_name='board',
            name='mac',
            field=models.CharField(blank=True, default=b'', help_text='MAC address', max_length=128),
        ),
        migrations.AddField(
            model_name='board',
            name='swlastupdate',
            field=models.DateTimeField(blank=True, help_text='Software last update date', null=True),
        ),
        migrations.AddField(
            model_name='board',
            name='swversion',
            field=models.CharField(blank=True, default=b'', help_text='Software version', max_length=255),
        ),
        migrations.AlterField(
            model_name='transportrf24network',
            name='iv',
            field=models.CharField(blank=True, choices=[(b'0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', b'preset 1'), (b'0,1,1,3,4,5,6,7,8,9,10,11,12,13,14,15', b'preset 2'), (b'0,1,2,1,4,5,6,7,8,9,10,11,12,13,14,15', b'preset 3'), (b'0,1,2,3,1,5,6,7,8,9,10,11,12,13,14,15', b'preset 4'), (b'0,1,2,3,4,1,6,7,8,9,10,11,12,13,14,15', b'preset 5'), (b'0,1,2,3,4,5,1,7,8,9,10,11,12,13,14,15', b'preset 6'), (b'0,1,2,3,4,5,6,1,8,9,10,11,12,13,14,15', b'preset 7'), (b'0,1,2,3,4,5,6,7,1,9,10,11,12,13,14,15', b'preset 8'), (b'0,1,2,3,4,5,6,7,8,1,10,11,12,13,14,15', b'preset 9')], help_text='AES cbc iv', max_length=47, validators=[django.core.validators.RegexValidator(re.compile('^\\d+(?:\\,\\d+)*\\Z'), code='invalid', message='Enter only digits separated by commas.')]),
        ),
        migrations.AlterField(
            model_name='transportrf24network',
            name='key',
            field=models.CharField(blank=True, choices=[(b'0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', b'preset 1'), (b'0,1,1,3,4,5,6,7,8,9,10,11,12,13,14,15', b'preset 2'), (b'0,1,2,1,4,5,6,7,8,9,10,11,12,13,14,15', b'preset 3'), (b'0,1,2,3,1,5,6,7,8,9,10,11,12,13,14,15', b'preset 4'), (b'0,1,2,3,4,1,6,7,8,9,10,11,12,13,14,15', b'preset 5'), (b'0,1,2,3,4,5,1,7,8,9,10,11,12,13,14,15', b'preset 6'), (b'0,1,2,3,4,5,6,1,8,9,10,11,12,13,14,15', b'preset 7'), (b'0,1,2,3,4,5,6,7,1,9,10,11,12,13,14,15', b'preset 8'), (b'0,1,2,3,4,5,6,7,8,1,10,11,12,13,14,15', b'preset 9')], help_text='AES key', max_length=47, validators=[django.core.validators.RegexValidator(re.compile('^\\d+(?:\\,\\d+)*\\Z'), code='invalid', message='Enter only digits separated by commas.')]),
        ),
    ]
