from django import forms
from .models import Student ,History


class Profile_form(forms.ModelForm):
    student_id = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control' }))
    student_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    student_surname = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    student_password = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    student_year = forms.IntegerField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    student_gpa = forms.FloatField(widget=forms.TextInput(attrs={'class': 'form-control',}))
    student_email = forms.EmailField(widget=forms.TextInput(attrs={'class': 'form-control',}))
    student_totalcredit = forms.IntegerField(widget=forms.TextInput(attrs={'class': 'form-control',}))
    #image = forms.ImageField()
    class Meta:
        model = Student
        fields = [
            'student_id',
            'student_name',
            'student_surname',
            'student_password',
            'student_year',
            'student_gpa',
            'student_email',
            'student_totalcredit',
        ]
        
class History_form(forms.ModelForm):
    studentid = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control' }))
    Year = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    Semester = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    SubjectID = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    Subject = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    Grade = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control',}))
    
    class Meta:
        model = History
        fields = [
            'studentid',
            'Year',
            'Semester',
            'SubjectID',
            'Grade',
            
        ]



