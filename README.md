## 在本地运行项目

注：建议提前看一下[django2.2连接mysql遇到的坑](https://www.cnblogs.com/hanwenlin/p/10677026.html)

1、克隆项目到本地

打开命令行，进入到保存项目的文件夹，输入如下命令：

```
git clone git@github.com:xyyojl/music-station.git
```

2、创建虚拟环境

```python
# 安装 virtualenv 已安装的话，请忽略
pip install virtualenv

# 创建虚拟环境 virtualenv [虚拟环境名称] 
virtualenv music

#如果不想使用系统的包,加上–no-site-packeages参数
virtualenv  --no-site-packages 创建路径名
```

3、激活虚拟环境

安装在命令行进入到保存虚拟环境的文件夹，输入如下命令激活虚拟环境：

```python
cd music
.\Scripts\activate
```

4、退出环境，**需要退出虚拟环境，输入下面命令即可**

```python
.\Scripts\deactivate
```

5、安装项目依赖

如果使用了虚拟环境，确保激活并进入了虚拟环境，在命令行进入项目所在的 music-station 文件夹，运行如下命令

```
pip install -r requirements.txt
```

6、使用 Navicat Premium 创建数据库

创建数据库之前，请查看配置文件 setting.py 中的**设置数据库连接信息 DATABASES**是否需要修改，明确 mysql 的数据库名。

7、迁移数据库

在上一步所在的位置运行如下命令迁移数据库：

```python
python manage.py migrate
```

8、借助 Navicat Premium 工具，将 data文件夹中的 excel 数据导入数据库对应的数据表里面，而不用自己输入数据。

9、创建后台管理员账户

```python
python manage.py createsuperuser
```

10、启动项目

在上一步所在的位置运行如下命令开启开发服务器

```python
python manage.py runserver
```





## 解决问题的资料

- [django2.2版本中pymysql报错'mysqlclient 1.3.13 or newer is required'](https://blog.csdn.net/lijing742180/article/details/91966031 )

- [django2.2连接mysql遇到的坑](https://www.cnblogs.com/hanwenlin/p/10677026.html)

- [win10安装MYSQL5.7](https://www.jianshu.com/p/c78272a2ca4d )

- [Navicat Premium 12.1.20.0安装与激活](https://www.jianshu.com/p/5f693b4c9468 )

- [Django中Mysql数据库的使用](https://juejin.im/post/5ca38d95e51d4505427f7741 )

- [[Navicat Premium 12安装与激活（亲测已成功激活）](https://www.cnblogs.com/telwanggs/p/11427581.html)

- [Django报错：NoReverseMatch: Reverse for 'xxx' not found . 'xxx' is not a valid view function or pattern](https://blog.csdn.net/qq_37218708/article/details/84489461)

- [Django错误：Migration admin.0001_initial is applied before its dependency users.0001_initial on databas](http://www.chenxm.cc/article/587.html)




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

