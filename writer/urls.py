from django.urls import path
from . import views

urlpatterns = [
    path('addpost/',views.addpost,name='addpost'),
    # path('proselist/',views.proselist,name='proselist'),
    path('myposts/',views.myposts,name='myposts'),
    path('prosedetail/<str:u>/',views.prosedetail,name="prosedetail"),
    path('filter/',views.filter,name="filter"),
    path('delpost/<str:u>',views.delpost,name='delpost'),
    path('confdel/<str:u>',views.confdel,name='confdel'),
    path('editpost/<str:u>/',views.editpost,name='editpost'),
 	path('comment/<str:u>/',views.comment,name='comment'),
 	path('addcomment/',views.addcomment,name='addcomment'),
 	path('bookmark/<str:u>/',views.bookmark,name='bookmark'),
 	path('disbookmark/',views.disbookmark,name='disbookmark'),
 	path('pques/',views.pques,name='pques'),

]
