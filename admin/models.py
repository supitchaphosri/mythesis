from django.db import models


class Admin(models.Model):
    admin_id = models.IntegerField(primary_key=True)
    admin_username = models.CharField(max_length=50)
    admin_password = models.CharField(max_length=50)
