from django.db import models
from student.models import Student
from django.urls import reverse


# Create your models here.


class Planner(models.Model):
    plan_id = models.IntegerField(primary_key=True)
    student_id = models.ForeignKey(
        Student, on_delete=models.CASCADE, default=None)
    plan_name = models.CharField(max_length=255, default=None)
    plan_year = models.IntegerField()
    plan_semester = models.IntegerField()
    plan_gps = models.FloatField()
    plan_no = models.IntegerField()
    plan_totalcredit = models.IntegerField()
    plan_remark = models.CharField(max_length=500)


class Category(models.Model):
    CategoryID = models.CharField(max_length=1)
    CategoryNAme = models.CharField(max_length=50)
    Category_credit = models.CharField(max_length=3)
    CreateTime = models.DateTimeField('date create')
    CreateBy = models.CharField(max_length=150)
    UpdateTime = models.DateTimeField('date update')
    UpdateBy = models.CharField(max_length=150)


class SubjectGroup(models.Model):
    SubjectGroupID = models.CharField(primary_key=True, max_length=2)
    SubjectGroupName = models.CharField(max_length=250)
    Credit = models.IntegerField()
    CreateTime = models.DateTimeField('date create')
    CreateBy = models.CharField(max_length=150)
    UpdateTime = models.DateTimeField('date update')
    UpdateBy = models.CharField(max_length=150)
    category = models.ForeignKey(Category, on_delete=models.CASCADE, default=None)

class Subject(models.Model):
    subject_id = models.CharField(primary_key=True, max_length=5)
    subject_code = models.CharField(max_length=8)
    subject_nameTH = models.CharField(max_length=100)
    subject_nameEN = models.CharField(max_length=100)
    #subject_detail = models.TextField(max_length=500, default=None)
    subject_credit = models.IntegerField()
    is_have_pre_subject = models.BooleanField(default=None)
    subjectgroup = models.ForeignKey(SubjectGroup, on_delete=models.CASCADE, default=None)

class PreSubject(models.Model):
    subject_id = models.ForeignKey(Subject, on_delete=models.CASCADE)
    pre_subject_id = models.IntegerField()

class SubjectActive(models.Model):
    SA_year = models.CharField(max_length=4)
    SA_semster = models.CharField(max_length=50)
    SA_id = models.CharField(max_length=8)
    SA_nameTH = models.CharField(max_length=100)
    SA_nameEN = models.CharField(max_length=100)
    SA_credit = models.CharField(max_length=1)
    SA_hour= models.CharField(max_length=1)

class addsubject(models.Model):
    subject = models.CharField(max_length=50)
    credit = models.CharField(max_length=1)
    addsubject_date = models.CharField(max_length=10)
    addsubject_startime = models.TimeField(auto_now=False, auto_now_add=False)
    addsubject_endtime = models.TimeField(auto_now=False, auto_now_add=False)
    #addsubject_hours = models.DurationField()
    #def get_time_diff(self):
         #addsubject_hours = addsubject_hours = addsubject_endtime - self.addsubject_startime
         #print (addsubject_hours)
         #return addsubject_hours


class plan(models.Model):
    plan = models.CharField(max_length=200)
    user_ID = models.CharField(max_length=200)

    def __str__(self):
        return "%s %s" % (self.plan, self.user_ID)

class Subject_plan(models.Model):
      Subject_ID = models.CharField(max_length=8,default=0)
      Subject_name = models.CharField(max_length=200)
      Subject_credit = models.IntegerField(default=0)
      group = models.IntegerField(default=0)

class Create_plan(models.Model):
      Subject_ID = models.ForeignKey(Subject_plan,on_delete=models.CASCADE, null=True, blank=True)
      plan_no = models.IntegerField(default=0)
      Time_start = models.TimeField(blank=True, null=True) 
      Time_close = models.TimeField(blank=True, null=True)
      day_id = models.IntegerField(default=0)
      Username = models.CharField(max_length=200,default=0)

    