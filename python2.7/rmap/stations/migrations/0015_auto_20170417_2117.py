# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-04-17 21:17
from __future__ import unicode_literals

from django.db import migrations, models
from django.core import serializers
import os

fixture_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '../fixtures'))

def load_fixture(apps, schema_editor):

    fixture_file=fixture_dir+"/sensor_type_01.json"
    fixture = open(fixture_file, 'rb')
    objects = serializers.deserialize('json', fixture, ignorenonexistent=True)
    for obj in objects:
        obj.save()
        fixture.close()        

    for fixture_filename in os.listdir(fixture_dir):
        if fixture_filename[:3] == "sta" and fixture_filename[-5:] == ".json":
            
            fixture_file = os.path.join(fixture_dir, fixture_filename)
            print "load fixture from file: ",fixture_file

            fixture = open(fixture_file, 'rb')
            objects = serializers.deserialize('json', fixture, ignorenonexistent=True)
            for obj in objects:
                obj.save()
            fixture.close()

#def load_fixture(apps, schema_editor):
#    call_command('loaddata', 'initial_data', app_label='stations') 

def unload_fixture(apps, schema_editor):
    "Brutally deleting all entries for this model..."

    MyModel = apps.get_model("stations", "StationMetadata")
    MyModel.objects.all().delete()
    MyModel = apps.get_model("stations", "Board")
    MyModel.objects.all().delete()
    MyModel = apps.get_model("stations", "Sensor")
    MyModel.objects.all().delete()

#    MyModel = apps.get_model("stations", "UserProfile")
#    MyModel.objects.get(user=apps.get_model("auth", "User").objects.get(username="rmap")).delete()
#    apps.get_model("auth", "User").objects.get(username="rmap").delete()

class Migration(migrations.Migration):

    dependencies = [
        ('stations', '0014_auto_20170410_1856'),
    ]

    operations = [
        migrations.AddField(
            model_name='sensortype',
            name='datalevel',
            field=models.CharField(choices=[(b'sample', b'Sensor provide data at Level I (sample)'), (b'report', b'Sensor provide data at Level II (report)')], default=b'sample', help_text='Data Level as defined by WMO (Sensor metadata from rmap RFC)', max_length=10),
        ),
        migrations.AlterField(
            model_name='sensor',
            name='driver',
            field=models.CharField(choices=[(b'I2C', b'I2C drivers'), (b'RF24', b'RF24 Network jsonrpc'), (b'JRPC', b'INDIRECT jsonrpc over some transport')], default=b'I2C', help_text='Driver to use', max_length=4),
        ),
        migrations.AlterField(
            model_name='stationmetadata',
            name='mqttmaintpath',
            field=models.CharField(default=b'sample', help_text='maint mqtt path for publish', max_length=100),
        ),
        migrations.AlterField(
            model_name='stationmetadata',
            name='mqttrootpath',
            field=models.CharField(default=b'sample', help_text='root mqtt path for publish', max_length=100),
        ),
        migrations.AlterField(
            model_name='stationmetadata',
            name='network',
            field=models.CharField(choices=[(b'fixed', b'For station with fixed coordinate'), (b'mobile', b'For station with mobile coordinate')], default=b'fixed', help_text='station network', max_length=50),
        ),
        migrations.AddField(
            model_name='bcode',
            name='offset',
            field=models.FloatField(default=0.0, help_text='Offset coeficent to convert units'),
        ),
        migrations.AddField(
            model_name='bcode',
            name='scale',
            field=models.FloatField(default=1.0, help_text='Scale coeficent to convert units'),
        ),
        migrations.AddField(
            model_name='bcode',
            name='userunit',
            field=models.CharField(default=b'Undefined', help_text='units of measure', max_length=20),
        ),
        migrations.AlterField(
            model_name='bcode',
            name='unit',
            field=models.CharField(default=b'Undefined', help_text='Units of measure', max_length=20),
        ),
        migrations.RunPython(load_fixture, reverse_code=unload_fixture),
    ]
