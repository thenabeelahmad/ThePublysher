from django.shortcuts import render
from django.db import connection

def home(request):
    query=connection.cursor()
    query.execute(f"select * from tbl_prose ")
    k=query.fetchall()
    return render(request,'home.html',{'post':k})