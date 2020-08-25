from django.db import models

# Create your models here.
class Profilepic(models.Model):
	doc=models.FileField()
	username=models.CharField(max_length=100)
	
	
	def __str__(self):
		return self.username	