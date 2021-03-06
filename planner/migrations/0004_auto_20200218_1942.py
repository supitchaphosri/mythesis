# Generated by Django 3.0.3 on 2020-02-18 12:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('planner', '0003_auto_20200213_2338'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='subject',
            name='SubjectGroupID',
        ),
        migrations.RemoveField(
            model_name='subjectgroup',
            name='CategoryID',
        ),
        migrations.AddField(
            model_name='subject',
            name='subjectgroup',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='planner.SubjectGroup'),
        ),
        migrations.AddField(
            model_name='subjectgroup',
            name='category',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='planner.Category'),
        ),
    ]
