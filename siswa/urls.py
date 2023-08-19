from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

from django.urls import path, include
from rest_framework import routers
from .views import SiswaViewSet, list_siswa, login_view, add_pelanggaran_siswa, logout_view, sync_siswa, create_pelanggaran_manual
from django.contrib.auth import views as auth_views


router = routers.DefaultRouter()
router.register(r'siswa', SiswaViewSet)
from django.contrib.auth.decorators import login_required

urlpatterns = [
    path('create/', views.create_siswa, name='create_siswa'),
    path('createmanual/', views.create_pelanggaran_manual, name='input_manual'),
    path('list/', views.siswa_list, name='siswa_list'),
    path('update/<int:pk>/', views.update_siswa, name='update_siswa'),
    path('delete/<int:pk>/', views.delete_siswa, name='delete_siswa'),
    path('siswa/getBarcode/', views.generate_barcode, name='getBarcode'),
    path('barcode_scanner/<str:nomor_induk>/', views.barcode_scanner, name='barcode_scanner'),
    path('listGuru/', views.guru_list, name='guru_list'),
    path('createGuru/', views.guru_create, name='guru_create'),
    path('updateGuru/<int:guru_id>/', views.guru_update, name='guru_update'),
    path('deleteGuru/<int:guru_id>/', views.guru_delete, name='guru_delete'),
    path('ListPelanggaran/', views.pelanggaran_list, name='pelanggaran_list'),
    path('createPelanggaran/', views.pelanggaran_create, name='pelanggaran_create'),
    path('updatePelanggaran/<int:pelanggaran_id>/', views.pelanggaran_update, name='pelanggaran_update'),
    path('deletePelanggaran/<int:pelanggaran_id>/', views.pelanggaran_delete, name='pelanggaran_delete'),

    path('siswa-list/', list_siswa, name='list_siswa'),
    path('add-pelanggaran/', views.add_pelanggaran_siswa, name='add_pelanggaran'),
    path('login/', login_view, name='login'),
    path('logout/', logout_view, name='logout'),
    path('tindakan/', views.tindakan_list, name='tindakan_list'),
    path('tindakan/create/', views.tindakan_create, name='tindakan_create'),
    path('tindakan/update/<int:tindakan_id>/', views.tindakan_update, name='tindakan_update'),
    path('deleteTindakan/<int:tindakan_id>/', views.tindakan_delete, name='tindakan_delete'),
    
    path('rekap-laporan/', views.rekap_laporan, name='rekap_laporan'),
    path('sync_siswa/', sync_siswa, name='sync_siswa'),
    path('cetak_semua_laporan/', views.cetak_semua_laporan, name='cetak_semua_laporan'),
    path('export_to_excel/', views.export_to_excel, name='export_to_excel'),

    path('import-excel/', views.import_siswa_from_excel, name='import_excel'),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
