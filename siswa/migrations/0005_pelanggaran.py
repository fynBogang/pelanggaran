# Generated by Django 4.2.2 on 2023-07-04 17:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('siswa', '0004_guru'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pelanggaran',
            fields=[
                ('id_pelanggaran', models.AutoField(primary_key=True, serialize=False)),
                ('nama_pelanggaran', models.CharField(max_length=255)),
            ],
        ),
    ]
