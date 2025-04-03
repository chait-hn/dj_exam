# booths/models.py
from django.db import models

class Booth(models.Model):
    title = models.CharField(max_length=255)