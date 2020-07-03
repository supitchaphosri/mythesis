from django import forms
from .models import addsubject ,Planner 



class addsubject_form(forms.ModelForm):
    subject = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control' }))
    credit = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control' }))
    addsubject_date = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control' }))
    addsubject_startime = forms.TimeField(widget=forms.TimeInput(format='%H:%M'))
    addsubject_endtime = forms.TimeField(widget=forms.TimeInput(format='%H:%M'))
    #addsubject_hours = forms.DurationField()
    
    class Meta:
        model = addsubject 
        fields = [
			'subject',
            'credit',
            'addsubject_date',
            'addsubject_startime',
			'addsubject_endtime', 
        ]