from django.http import HttpResponse
from django.shortcuts import render
from .models import*
from django.shortcuts import redirect
# FILE UPLOAD AND VIEW
from  django.core.files.storage import FileSystemStorage
# SESSION
from django.conf import settings
from ML import emotions_detection
from ML import AiVolumeController
from ML import music_track
from ML import SER2
import os
import time
import imp



def first(request):
    return render(request,'index.html')

def index(request):
    return render(request,'index.html')    


def reg(request):
    return render(request,'register.html')
    
    
def addreg(request):
    if request.method == 'POST':
        name=request.POST.get('name')
        email=request.POST.get('email')
        phone=request.POST.get('phone')
        password=request.POST.get('password')
        user=register(name=name,email=email,phone=phone,password=password)    
        user.save()
    return render(request,'register.html')    


def logint(request):
    email = request. POST.get('email')
    password = request.POST.get('password')
    if email == 'admin@gmail.com' and password == 'admin':
        request.session['logintdetail'] = email
        request.session['logint'] = 'admin'
        return render(request, 'index.html')


    elif register.objects.filter(email=email,password=password).exists():
        userdetails=register.objects.get(email=request.POST['email'], password=password)
        if userdetails.password == request.POST['password']:
            request.session['uid'] = userdetails.id
            request.session['sname'] = userdetails.name

            request.session['semail'] = email

            request.session['user'] = 'user'

            
            return render(request,'index.html')                 
    
    else:
      return render(request, 'login.html', {'status': 'Invaild Email or Password'})   


def login(request):
    return render(request,'login.html')
    
def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(first)    

def allmusic(request):
    sel=music_recommendation.objects.all()
    return render(request,'allmusic.html',{'temp':sel})




def addmusic(request):
    if request.method == 'POST':
        name=request.POST.get('name')
        description='1'
        myfile = request.FILES['musics']
        fs = FileSystemStorage()
        filename = fs.save(myfile.name,myfile)
        emotion=request.POST.get('emotion')
        user=music_recommendation(name=name,description=description,musics=filename,emotion=emotion)    
        user.save()
    return render(request,'addmusic.html')    


def viewmusic(request):
    emotion=emotions_detection.predict()
    print(emotion)
    sel=music_recommendation.objects.filter(emotion=emotion)
    # AiVolumeController.control()
    return render(request,'viewmusic.html',{'res':sel})



def playlist(request):
    return render(request,'playlist.html')


def musichappy(request):
    sel=music_recommendation.objects.filter(emotion="happy")
    return render(request,'musichappy.html',{'res':sel})

def musicsad(request):
    sel=music_recommendation.objects.filter(emotion="sad")
    return render(request,'musicsad.html',{'res':sel})

def musicangry(request):
    sel=music_recommendation.objects.filter(emotion="angry")
    return render(request,'musicangry.html',{'res':sel})

def musicneutral(request):
    sel=music_recommendation.objects.filter(emotion="neutral")
    return render(request,'musicneutral.html',{'res':sel})

def musicsup(request):
    sel=music_recommendation.objects.filter(emotion="suprise")
    return render(request,'musicsup.html',{'res':sel})

def musicfear(request):
    sel=music_recommendation.objects.filter(emotion="fear")
    return render(request,'musicfear.html',{'res':sel})

def musicdisgust(request):
    sel=music_recommendation.objects.filter(emotion="disgust")
    return render(request,'musicdisgust.html',{'res':sel})


def playmusic(request):
    music_track.predict()
    return redirect(index)


def voice(request):
    emotion=SER2.predict()
    print(emotion)
    sel=music_recommendation.objects.filter(emotion=emotion)
    return render(request,'voice.html',{'res':sel})
