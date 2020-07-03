from django.urls import path, include
from django.conf.urls import url
from . import views
from myproject import settings
from django.conf.urls.static import static

app_name = 'student'

urlpatterns = [
    path('', views.Index, name='Index'),
    path('Planner', views.Planner, name='Planner'),
    path('Plannerco', views.Plannerco, name='Plannerco'),
    path('Planned', views.Planned, name='Planned'),
    path('History', views.SHistory, name ='History'),
    path('Profile', views.Profile, name='Profile'),
  
]
