# index 的 views.py
from django.shortcuts import render
from .models import *

def indexView(request):
    # 热搜歌曲
    search_song = Dynamic.objects.select_related('song').order_by('-dynamic_search').all()[:8]
    #select_related的用法可以用于表之间建立联系的查询。
    #select_related的参数为'song'，我们可以理解为在这个表中，排序为逆序，显示前八个数据
    #等同于SQL：SELECT * FROM index_dynamic INNER JOIN index_song ON (song_id = id)
    #查询两个模型的全部数据
    # 音乐分类
    label_list = Label.objects.all()
    # 热门歌曲
    play_hot_song = Dynamic.objects.select_related('song').order_by('-dynamic_plays').all()[:10]
    # 新歌推荐
    daily_recommendation = Song.objects.order_by('-song_release').all()[:3]
    # 热门搜索和热门下载
    search_ranking = search_song[:6]
    down_ranking = Dynamic.objects.select_related('song').order_by('-dynamic_down').all()[:6]
    all_ranking = [search_ranking,down_ranking]
    #render()结合一个给定的模板和一个给定的上下文字典, 并返回一个渲染后的HttpResponse对象。
    #locals()用法：locals()可以直接将函数中所有的变量全部传给模板
    return render(request,'index.html',locals())