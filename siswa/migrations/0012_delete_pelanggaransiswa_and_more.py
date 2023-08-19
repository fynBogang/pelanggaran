# Generated by Django 4.2.2 on 2023-07-23 06:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('siswa', '0011_siswatindakan_siswapelanggaran'),
    ]

    operations = [
        migrations.DeleteModel(
            name='PelanggaranSiswa',
        ),
        migrations.AddField(
            model_name='siswapelanggaran',
            name='tindakan_list',
            field=models.ManyToManyField(to='siswa.tindakan'),
        ),
        migrations.DeleteModel(
            name='SiswaTindakan',
        ),
    ]