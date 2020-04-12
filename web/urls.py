"""myobject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from .views import index
urlpatterns = [
    # 前台首页
    url(r'^$', index.index, name="index"),  # 商城首页
    url(r'^list$', index.lists, name="list"),  # 商品列表
    # url(r'^list/(?P<pIndex>[0-9]+)$',index.lists,name="list"), #分页商品列表展示
    url(r'^detail/(?P<gid>[0-9]+)$', index.detail, name="detail"),  # 商品详情

    # 会员及个人中心等路由配置
    url(r'^login$', index.login, name="login"),
    url(r'^dologin$', index.dologin, name="dologin"),
    url(r'^logout$', index.logout, name="logout"),
]
