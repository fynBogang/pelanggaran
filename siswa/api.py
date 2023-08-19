from rest_framework import viewsets
from .models import Siswa
from .serializers import SiswaSerializer

class SiswaViewSet(viewsets.ModelViewSet):
    queryset = Siswa.objects.all()
    serializer_class = SiswaSerializer
