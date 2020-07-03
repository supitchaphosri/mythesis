from django.urls import path, include
from django.conf.urls import url
from . import views
from myproject import settings
from django.conf.urls.static import static

app_name = 'planner'

urlpatterns = [
    
    path('subjectall', views.planner_subjectall, name='subjectall'),
    path('planning', views.planner_planning, name='planning'),
    path('plan-form', views.planner_form, name='plan-form'),
    path('gradepredic', views.gradepredic, name='gradepredic'),
    url(r'^insert/(?P<username>\w+)/$', views.insert, name='insert'),
    #url(r'insert$', views.insert, name='insert'),
    url(r'inser_plan', views.inser_plan, name='inser_plan'),
    url(r'^create_plans/(?P<username>\w+)/(?P<plan_id>\w+)/$', views.create_plans, name='create_plans'),
    url(r'^delete_plan/(?P<username>\w+)/(?P<plan_id>\w+)/$', views.delete_plan, name='delete_plan'),
    url(r'^home/(?P<username>\w+)/$', views.home, name="home"),
   
]
