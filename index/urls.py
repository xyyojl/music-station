# index 的 urls.py
from django.urls import path
from . import views
# 设置首页的 URL 地址信息
urlpatterns = [
    path('',views.indexView,name="index")
]