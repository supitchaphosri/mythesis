# Generated by Django 2.2.7 on 2020-02-12 15:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('student', '0006_auto_20200212_1954'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('CategoryID', models.CharField(max_length=1)),
                ('CategoryNAme', models.CharField(max_length=50)),
                ('CreateTime', models.DateTimeField(verbose_name='date create')),
                ('CreateBy', models.CharField(max_length=150)),
                ('UpdateTime', models.DateTimeField(verbose_name='date update')),
                ('UpdateBy', models.CharField(max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name='SubjectGroup',
            fields=[
                ('SubjectGroupID', models.CharField(max_length=2, primary_key=True, serialize=False)),
                ('SubjectGroupName', models.CharField(max_length=250)),
                ('Credit', models.IntegerField()),
                ('CreateTime', models.DateTimeField(verbose_name='date create')),
                ('CreateBy', models.CharField(max_length=150)),
                ('UpdateTime', models.DateTimeField(verbose_name='date update')),
                ('UpdateBy', models.CharField(max_length=150)),
                ('CategoryID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='planner.Category')),
            ],
        ),
        migrations.CreateModel(
            name='Subject',
            fields=[
                ('subject_id', models.CharField(max_length=5, primary_key=True, serialize=False)),
                ('subject_code', models.CharField(max_length=8)),
                ('subject_nameTH', models.CharField(max_length=100)),
                ('subject_nameEN', models.CharField(max_length=100)),
                ('subject_detail', models.CharField(default=None, max_length=500)),
                ('subject_credit', models.IntegerField()),
                ('is_have_pre_subject', models.BooleanField(default=None)),
                ('SubjectGroupID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='planner.SubjectGroup')),
            ],
        ),
        migrations.CreateModel(
            name='PreSubject',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pre_subject_id', models.IntegerField()),
                ('subject_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='planner.Subject')),
            ],
        ),
        migrations.CreateModel(
            name='Planner',
            fields=[
                ('plan_id', models.IntegerField(primary_key=True, serialize=False)),
                ('plan_name', models.CharField(default=None, max_length=255)),
                ('plan_year', models.IntegerField()),
                ('plan_semester', models.IntegerField()),
                ('plan_gps', models.FloatField()),
                ('plan_no', models.IntegerField()),
                ('plan_totalcredit', models.IntegerField()),
                ('plan_remark', models.CharField(max_length=500)),
                ('student_id', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='student.Student')),
            ],
        ),
    ]