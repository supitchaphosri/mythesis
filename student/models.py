from django.db import models
#from PIL import Image

class Student(models.Model):
    student_id = models.CharField(
        primary_key=True, max_length=10, default=None)
    student_name = models.CharField(max_length=100)
    student_surname = models.CharField(max_length=100)
    student_password = models.CharField(max_length=50)
    student_year = models.IntegerField()
    student_gpa = models.FloatField()
    student_email = models.EmailField(max_length=254)
    student_totalcredit = models.IntegerField()
    
    


class History(models.Model):
    studentid = models.CharField(max_length=10, default=None)
    Year = models.CharField(max_length=4,default=None)
    Semester =models.CharField(max_length=7, default=None)
    
    SubjectID1 =models.CharField(max_length=8, default=None)
    Subject1 =models.CharField(max_length=50, default=None)
    Grade1 = models.CharField(max_length=2,default=None)
    credit1 = models.CharField(max_length=1,default=3)
    
    SubjectID2 =models.CharField(max_length=8, default=None)
    Subject2 =models.CharField(max_length=50, default=None)
    Grade2 = models.CharField(max_length=2,default=None)
    credit2 = models.CharField(max_length=1,default=3)
    
    SubjectID3 =models.CharField(max_length=8, default=None)
    Subject3 =models.CharField(max_length=50, default=None)
    Grade3 = models.CharField(max_length=2,default=None)
    credit3 = models.CharField(max_length=1,default=3)
    
    SubjectID4 =models.CharField(max_length=8, default=None)
    Subject4 =models.CharField(max_length=50, default=None)
    Grade4 = models.CharField(max_length=2,default=None)
    credit4 = models.CharField(max_length=1,default=3)
    
    SubjectID5 =models.CharField(max_length=8, default=None)
    Subject5 =models.CharField(max_length=50, default=None)
    Grade5 = models.CharField(max_length=2,default=None)
    credit5 = models.CharField(max_length=1,default=3)
   
    SubjectID6 =models.CharField(max_length=8, default=None)
    Subject6 =models.CharField(max_length=50, default=None)
    Grade6 = models.CharField(max_length=2,default=None)
    credit6 = models.CharField(max_length=1,default=3)
    
    SubjectID7 =models.CharField(max_length=8, default=None)
    Subject7 =models.CharField(max_length=50, default=None)
    Grade7 = models.CharField(max_length=2,default=None)
    credit7 = models.CharField(max_length=1,default=3)
    
    SubjectID8 =models.CharField(max_length=8, default=None)
    Subject8 =models.CharField(max_length=50, default=None)
    Grade8 = models.CharField(max_length=2,default=None)
    credit8 = models.CharField(max_length=1,default=3)
    
    SubjectID9 =models.CharField(max_length=8, default=None)
    Subject9 =models.CharField(max_length=50, default=None)
    Grade9 = models.CharField(max_length=2,default=None)
    credit9 = models.CharField(max_length=1,default=3)
    
    SubjectID10 =models.CharField(max_length=8, default=None)
    Subject10 =models.CharField(max_length=50, default=None)
    Grade10 = models.CharField(max_length=2,default=None)
    credit10 = models.CharField(max_length=1,default=3)
    
    GPAX= models.CharField(max_length=4,default=None)
    GPA= models.CharField(max_length=4,default=None)
    
