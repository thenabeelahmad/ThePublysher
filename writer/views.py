from django.db import connection
from django.shortcuts import render,redirect

def addpost(request):
    if request.method=="POST":
        us=request.POST['user']
        auth=request.POST['author']
        tit=request.POST['title']
        des=request.POST['description']
        gen=request.POST['genre']
        cont=request.POST['content']
        c=connection.cursor()
        c.execute(f"""INSERT INTO tbl_prose(username,author,title,description,genre,content) 
        VALUES ('{us}','{auth}',"{tit}","{des}","{gen}","{cont}") """)
        return redirect('home')   
    return render(request,"writer/post.html") 



def myposts(request):
    query=connection.cursor()
    query.execute(f"select * from tbl_prose where username='{request.user.username}' ")
    s=query.fetchall()
    return render(request,"writer/myposts.html",{'data':s})    	        

def prosedetail(request,u):
    query=connection.cursor()
    query.execute(f"select * from tbl_prose where title='{u}'")
    s=query.fetchone()
    query1=connection.cursor()
    query1.execute(f"select * from tbl_comment where title='{u}' ")
    ss=query1.fetchall()
    return render(request,"writer/prosedetail.html",{'data':s,'comm':ss}) 

def filter(request):
    if request.method=="POST":
       auth=request.POST['author']
       c=connection.cursor()
       c.execute(f"""select * from tbl_prose where content like '%{auth}%'  """)
       s=c.fetchall()
       return render(request,"writer/proselist.html",{'data':s})
    return render(request,"writer/proselist.html")

def delpost(request,u):
    query=connection.cursor()
    query.execute(f"DELETE FROM tbl_prose where title='{u}'")
    s=query.fetchone()
    return render(request,"writer/myposts.html")

def confdel(request,u):
    query=connection.cursor()
    query.execute(f"select * from tbl_prose where title='{u}'")
    s=query.fetchone()
    return render(request,"writer/confdel.html",{'data':s})     

def editpost(request,u):
    query=connection.cursor()
    query.execute(f"select * from tbl_prose where title='{u}'")
    s=query.fetchone()
    return render(request,"writer/editpost.html",{'data':s}) 

def comment(request,u):
    query=connection.cursor()
    query.execute(f"select * from tbl_prose where title='{u}'")
    s=query.fetchone()
    return render(request,"writer/comment.html",{'data':s})

def addcomment(request):
    if request.method=="POST":
        us=request.POST['user']
        auth=request.POST['author']
        tit=request.POST['title']
        com=request.POST['comm']
        c=connection.cursor()
        c.execute(f"""INSERT INTO tbl_comment(username,author,title,comment) 
        VALUES ('{us}','{auth}',"{tit}","{com}") """)
        return redirect('home')   
    return render(request,"writer/post.html")

def bookmark(request,u):
    c=connection.cursor()
    c.execute(f"""INSERT INTO tbl_bookmark(username,title) 
        VALUES ('{request.user.username}','{u}') """)
    # return render(request,"writer/prosedetail.html")
    return redirect('home')

def disbookmark(request):
    c=connection.cursor()
    c.execute(f""" select distinct title from tbl_bookmark where username='{request.user.username}'  """)   
    s=c.fetchall()
    return render(request,"writer/displaybookmarks.html",{'data':s})

def pques(request):
    if request.method=="POST":
        us=request.POST['user']
        auth=request.POST['author']
        qu=request.POST['ques']
        c=connection.cursor()
        c.execute(f"""INSERT INTO pose_question(username,author,question) 
        VALUES ('{us}','{auth}',"{qu}") """)
        return redirect('home')   
    return render(request,"writer/posequestion.html") 

