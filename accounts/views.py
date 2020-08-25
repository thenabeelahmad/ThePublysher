from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth import logout,login
from django.core.files.storage import FileSystemStorage
from django.db import connection
from .models import Profilepic
from django.contrib.auth.decorators import login_required

# Create your views here.

def signupview(request):
    if request.method=="POST":
        form=UserCreationForm(data=request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form=UserCreationForm()
    return render(request,"accounts/signup.html",{'form':form})


def loginview(request):
    if request.method=="POST":
        form=AuthenticationForm(data=request.POST)
        if form.is_valid():
            user=form.get_user()
            login(request,user)
            return redirect('home')
    else:
        form=AuthenticationForm()
    return render(request,"accounts/login.html",{'form':form})

def logoutview(request):
	logout(request)
	return redirect('home')

def editprofile(request):
    if request.method=="POST":
        u=request.POST['us']
        f=request.POST['fname']
        e=request.POST['email']
        c=connection.cursor()
        c.execute(f"""update auth_user set first_name='{f}',
        email='{e}' where username='{u}'""")
        c.execute(f"""update tbl_prose set author='{f}' where username='{u}'""")
        c.execute(f"""update tbl_comment set author='{f}' where username='{u}'""")
        return redirect('home')
    return render(request,"accounts/editprofile.html")    
