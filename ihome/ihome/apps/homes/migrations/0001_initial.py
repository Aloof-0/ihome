# Generated by Django 2.2.5 on 2020-12-26 02:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Area',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新时间')),
                ('name', models.CharField(max_length=32, verbose_name='区域名字')),
            ],
            options={
                'db_table': 'tb_area',
            },
        ),
        migrations.CreateModel(
            name='Facility',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新时间')),
                ('name', models.CharField(max_length=32, verbose_name='设施名字')),
            ],
            options={
                'db_table': 'tb_facility',
            },
        ),
        migrations.CreateModel(
            name='House',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新时间')),
                ('title', models.CharField(max_length=64, verbose_name='标题')),
                ('price', models.IntegerField(default=0)),
                ('address', models.CharField(default='', max_length=512)),
                ('room_count', models.IntegerField(default=1)),
                ('acreage', models.IntegerField(default=0)),
                ('unit', models.CharField(default='', max_length=32)),
                ('capacity', models.IntegerField(default=1)),
                ('beds', models.CharField(default='', max_length=64)),
                ('deposit', models.IntegerField(default=0)),
                ('min_days', models.IntegerField(default=1)),
                ('max_days', models.IntegerField(default=0)),
                ('order_count', models.IntegerField(default=0)),
                ('index_image_url', models.CharField(default='', max_length=256)),
                ('area', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='homes.Area', verbose_name='归属地的区域编号')),
                ('facility', models.ManyToManyField(to='homes.Facility', verbose_name='和设施表之间多对多关系')),
            ],
            options={
                'db_table': 'tb_house',
            },
        ),
        migrations.CreateModel(
            name='HouseImage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('create_time', models.DateTimeField(auto_now_add=True, verbose_name='创建时间')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新时间')),
                ('url', models.CharField(max_length=256)),
                ('house', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='homes.House')),
            ],
            options={
                'db_table': 'tb_house_image',
            },
        ),
    ]
