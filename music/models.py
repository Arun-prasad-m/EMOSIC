from django.db import models


class register(models.Model): 
    id=models.IntegerField(primary_key=True)
    name = models.CharField(max_length=150)
    email = models.CharField(max_length=150)
    phone = models.CharField(max_length=150)
    password = models.CharField(max_length=150)  
  
class music_recommendation(models.Model): 
    id=models.IntegerField(primary_key=True)
    name = models.CharField(max_length=150)
    description = models.CharField(max_length=150)
    musics = models.FileField(max_length=150)
    emotion = models.CharField(max_length=150)  

 




    
class feedback(models.Model): 
    id=models.IntegerField(primary_key=True)
    user_id = models.CharField(max_length=150)
    feedbacks = models.CharField(max_length=150)
    
    
 