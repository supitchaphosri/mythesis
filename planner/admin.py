from django.contrib import admin

from .models import Planner, PreSubject, Subject, SubjectGroup, Category ,SubjectActive ,addsubject,Subject_plan,Create_plan

admin.site.register(Category)
admin.site.register(SubjectGroup)
admin.site.register(Subject)
admin.site.register(PreSubject)
admin.site.register(Planner)
admin.site.register(SubjectActive)
admin.site.register(addsubject)
admin.site.register(Subject_plan)
admin.site.register(Create_plan)