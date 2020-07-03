from django.shortcuts import render
from .forms import Profile_form , History_form
from student.models import Student , History
from django.contrib.auth.decorators import login_required 
from django.contrib.auth import get_user_model
from django.contrib import messages


IMAGE_FILE_TYPES = ['png', 'jpg', 'jpeg']

@login_required 
def Index(request):
    return render(request, 'students/student/base.html',)


@login_required 
def Profile(request):
    student =Student.objects.filter(student_id=request.user).values()
    form = Profile_form()
    context = {"form": form, 
            'student': student
            }

    if request.method == 'POST':
        form = Profile_form(request.POST, request.FILES)
        if form.is_valid():
            user_pr = form.save(commit=False)
            user_pr.save()
            messages.success(request, f"Profild already in as {user_pr}")
            return render(request, 'students/student/profile.html', {'form': form, 'user_pr': user_pr})
    else:
        print('no post')

    return render(request, 'students/student/profile.html', context)

@login_required 
def SHistory(request):
    H = History.objects.filter(studentid=request.user).values()
    context = {
               "H" : H
            }
    return render(request, 'students/student/history.html',context)



def Planner(request):
    return render(request, 'students/student/planner.html',)


def Plannerco(request):
    return render(request, 'students/student/plannerco.html',)


def Planned(request):
    return render(request, 'students/student/planned.html')


