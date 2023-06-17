# Generated by Django 4.2.2 on 2023-06-17 08:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0005_post_views'),
    ]

    operations = [
        migrations.CreateModel(
            name='PageViews',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('count', models.IntegerField(default=0)),
            ],
        ),
        migrations.RemoveField(
            model_name='post',
            name='views',
        ),
    ]