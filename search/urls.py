# search 的 urls.py
from django.urls import path
from . import views
urlpatterns = [
    path('<int:page>.html',views.searchView,name="search")
]