from django.shortcuts import render, redirect
from planner.models import Subject, SubjectGroup, PreSubject, Category,addsubject,Subject_plan
from student.models import History 
from .forms import addsubject_form
from django.contrib import messages
from django.contrib.auth.decorators import login_required

from planner.models import plan
from planner.models import Subject_plan
from planner.models import Create_plan
from django.db.models import Sum
from django.db.models import Count

def planner_subjectall(request):
    s = Subject.objects.filter()
    sg = SubjectGroup.objects.filter()
    ps = PreSubject.objects.filter()
    c = Category.objects.filter()

    context = {
        's': s,
        'sg': sg,
        'ps': ps,
        'c': c
    }

    return render(request, 'planners/planner/planner_subjectall.html', context)
    

def planner_planning(request):
    add_sj = addsubject.objects.filter()
    context ={
        'add_sj' : add_sj
    }
    return render(request, 'planners/planner/planner_planning.html', context)


@login_required 
def planner_form(request):
    P = addsubject.objects.filter()
    form = addsubject_form()
    context = {
                
                'form' : form,
                'P' : P  
            }
    if request.method == 'POST':
        form = addsubject_form(request.POST, request.FILES)
        
        if form.is_valid():
            user_pr = form.save(commit=False)
            user_pr.save()
            messages.success(request, f"เพิ่มวิชาเรียบร้อยแล้ว")
            return render(request, 'planners/planner/planner_form.html', {'form': form, 'user_pr': user_pr})
    else:
        print('no post')
            
    return render(request, 'planners/planner/planner_form.html',context)

def gradepredic(request):
    Ss = Subject_plan.objects.filter()
    H = History.objects.filter(studentid=request.user).values()
    context = {
                
                'Ss' : Ss,
                'H' : H  
            }
    return render(request, 'planners/planner/grade_predic.html',context)
    


#**************************************************************************************
def home(request,username):
    data = plan.objects.filter(user_ID = username)
    if not data :
        return render(request, 'planners/planner/home.html')
    else:
        return render(request, 'planners/planner/home.html',{'datas': data})
    
def insert(request,username):
    if request.method == 'POST':
        data = plan.objects.create(plan=request.POST['plan'],user_ID=username)
        data.save()
    print(username);
    return redirect('/planner/home/'+username)


def create_plans(request,username,plan_id):

    Subjects = Subject_plan.objects.all()
    plans = Create_plan.objects.filter(Username = username , plan_no = plan_id).order_by('Time_start')
    plan_name = plan.objects.filter(user_ID = username , id = plan_id)
    

    return render(request, 'planners/planner/plan.html',{'Subject': Subjects,'plan_id':plan_id,'user': username ,'plan_data':plans,'plan_name':plan_name})

def delete_plan(request,username,plan_id):
    plan_de =  plan.objects.filter(user_ID = username , id = plan_id).delete()
    Create_plan_de = Create_plan.objects.filter(Username = username , plan_no = plan_id).delete()
    return redirect('/planner/home/'+username)


def inser_plan(request):
     if request.method == 'POST':
        print(request.POST['Sub_ject_code'])
        print(request.POST['user'])
        print(request.POST['day_id'])
        print(request.POST['start_class'])
        print(request.POST['end_class'])
        print(request.POST['plan_id'])
         
        data_plan = Create_plan.objects.create(Subject_ID = Subject_plan.objects.get(Subject_ID = request.POST['Sub_ject_code']),Username = request.POST['user'], day_id = request.POST['day_id'],Time_start = request.POST['start_class'],Time_close = request.POST['end_class'],plan_no = request.POST['plan_id'])
        data_plan.save()
        
     return redirect('create_plans/'+request.POST['user']+'/'+request.POST['plan_id'])   



    
