## 解决问题的资料

- [django2.2版本中pymysql报错'mysqlclient 1.3.13 or newer is required'](https://blog.csdn.net/lijing742180/article/details/91966031 )

- [django2.2连接mysql遇到的坑](https://www.cnblogs.com/hanwenlin/p/10677026.html)

- [win10安装MYSQL5.7](https://www.jianshu.com/p/c78272a2ca4d )

- [Navicat Premium 12.1.20.0安装与激活](https://www.jianshu.com/p/5f693b4c9468 )

- [Django中Mysql数据库的使用](https://juejin.im/post/5ca38d95e51d4505427f7741 )

- [[Navicat Premium 12安装与激活（亲测已成功激活）](https://www.cnblogs.com/telwanggs/p/11427581.html)

- [Django报错：NoReverseMatch: Reverse for 'xxx' not found . 'xxx' is not a valid view function or pattern](https://blog.csdn.net/qq_37218708/article/details/84489461)

- [Django错误：Migration admin.0001_initial is applied before its dependency users.0001_initial on databas](http://www.chenxm.cc/article/587.html)

- [开心愉快的使用Navicat Premium，你懂的](https://blog.wxlost.com/navicat_crack.html)




## 出现的错误

### 错误1:

获取不到 css文件，图片文件，报404错误

```html
{% extends "title_base.html"  %}
{% block title  %}
{% load staticfiles %}
<link type="image/x-icon" rel="shortcut icon" href="{% static "favicon.ico" %}"/>
<link type="text/css" rel="stylesheet" href="{% static "css/common.css" %}"/>
<link type="text/css" rel="stylesheet" href="{% static "css/index.css" %}"/>
```

解决办法：

引入js/css/img等静态文件的时候要在settings.py ，添加下面代码

```py
# STATICFILES_DIRS用于收集admin的静态资源文件
# STATICFILES_DIRS = [os.path.join(BASE_DIR, 'static'),]
```

