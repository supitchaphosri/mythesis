# Generated by Django 2.2.7 on 2020-02-02 15:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0004_student_student_picture'),
    ]

    operations = [
        migrations.CreateModel(
            name='History',
            fields=[
                ('hsubject_id', models.CharField(max_length=8, primary_key=True, serialize=False)),
                ('hsubject_nameTH', models.CharField(max_length=100)),
                ('hsubject_nameEN', models.CharField(max_length=100)),
                ('hsubject_credit', models.IntegerField()),
                ('hgrad', models.FloatField()),
            ],
        ),
        migrations.AlterField(
            model_name='student',
            name='student_picture',
            field=models.FileField(blank=True, default=None, upload_to=''),
        ),
    ]
