# Generated by Django 4.2.2 on 2023-07-08 01:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('siswa', '0009_siswa_qr_code'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tindakan',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('range_point', models.CharField(max_length=50)),
                ('tindakan', models.CharField(max_length=100)),
            ],
        ),
    ]