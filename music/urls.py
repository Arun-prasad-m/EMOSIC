"""music URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('',views.first),
    path('index',views.index),
    path('reg',views.reg),
    path('addreg',views.addreg),
    path('login',views.login),
    path('logint',views.logint),
    path('logout',views.logout),
    path('addmusic',views.addmusic),
    path('viewmusic',views.viewmusic),
    path('playmusic',views.playmusic),
    path('allmusic',views.allmusic),
    path('voice',views.voice),
    
    path('playlist',views.playlist),
    path('musichappy',views.musichappy),
    path('musicsad',views.musicsad),
    path('musineutral',views.musicneutral),
    path('musicangry',views.musicangry),
    path('musicfear',views.musicfear),
    path('musicsup',views.musicsup),
    path('musicdisgust',views.musicdisgust),
    
    path('admin/', admin.site.urls),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
