# index 的 __init__.py
# 功能模块进行命名
from django.apps import AppConfig
import os
# 修改 app 在 Admin 后台显示的名称
# default_app_config的值来自apps.py的类名
default_app_config = 'index.IndexConfig'
# 获取当前 app 的命名
def  get_current_app_name(_file):
    return os.path.split(os.path.dirname(_file))[-1]
# 重写类 IndexConfig
class IndexConfig(AppConfig):
    name = get_current_app_name(__file__)
    verbose_name = '网站首页'