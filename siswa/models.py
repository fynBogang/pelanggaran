from django.db import models
import datetime
from django.db import models

class Siswa(models.Model):
    JENIS_KELAMIN_CHOICES = [
        ('L', 'Laki-laki'),
        ('P', 'Perempuan'),
    ]

    KELAS_CHOICES = [
        ('X', 'X SEPULUH'),
        ('XI', 'XI SEBELAS'),
        ('XII', 'XII DUA BELAS'),
    ]

    nama_lengkap = models.CharField(max_length=100, default='')
    tempat_lahir = models.CharField(max_length=100, default='')
    tanggal_lahir = models.DateField(default=datetime.date.today)
    jenis_kelamin = models.CharField(max_length=1, choices=JENIS_KELAMIN_CHOICES, default='')
    lembaga = models.CharField(max_length=100, default='')
    nomor_induk = models.CharField(max_length=20, default='')
    jurusan = models.CharField(max_length=100, default='')
    kelas = models.CharField(max_length=100, choices=KELAS_CHOICES, default='')
    rombel = models.CharField(max_length=10, default='')
    qr_code = models.ImageField(upload_to='siswa/qr_codes', blank=True)
    
class Guru(models.Model):
    id_guru = models.CharField(max_length=100, unique=True)
    nama_lengkap = models.CharField(max_length=100)
    tanggal_lahir = models.DateField()
    nuptk = models.CharField(max_length=100)
    nomer_hp = models.CharField(max_length=100)

    def __str__(self):
        return self.nama_lengkap

class UserProfile(models.Model):
    username = models.CharField(max_length=150, unique=True)
    password = models.CharField(max_length=128)
    # Add other fields as per your requirements

    def __str__(self):
        return self.username

class Tindakan(models.Model):
    id_tindakan = models.CharField(max_length=100, unique=True, null=True)
    range_point = models.CharField(max_length=50)
    tindakan = models.CharField(max_length=100)

    def __str__(self):
        return self.tindakan

class Pelanggaran(models.Model):
    id_pelanggaran = models.AutoField(primary_key=True)
    nama_pelanggaran = models.CharField(max_length=255)
    point_pelanggaran = models.CharField(max_length=255, default='')

class SiswaPelanggaran(models.Model):
    siswa = models.ForeignKey(Siswa, on_delete=models.CASCADE)
    tanggal = models.DateField(default=datetime.date.today)
    pelanggaran = models.ForeignKey(Pelanggaran, on_delete=models.PROTECT)
