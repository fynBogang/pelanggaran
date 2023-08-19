from django.contrib import admin
from django.urls import path, include
from siswa.views import dashboard, login_view
from rest_framework import routers
from siswa.api import SiswaViewSet

router = routers.DefaultRouter()
router.register('siswa', SiswaViewSet)


urlpatterns = [
    path('dashboard/', dashboard, name='dashboard'),
    path('', login_view, name='login'),
    path('admin/', admin.site.urls),
    path('siswa/', include('siswa.urls')),    

    path('api/', include(router.urls)),
    
]