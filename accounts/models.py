from django.db import models

class Specialty(models.Model):
    """Model for medical specialties"""
    name = models.CharField(max_length=100, unique=True)
    slug = models.SlugField(max_length=100, unique=True)
    icon = models.CharField(max_length=50, blank=True)
    description = models.TextField(blank=True)
    
    class Meta:
        verbose_name = "Specialty"
        verbose_name_plural = "Specialties"
        ordering = ['name']
    
    def __str__(self):
        return self.name


class Register(models.Model):
    # ... existing code ...

class Login(models.Model):
    # ... existing code ...

class Hospital(models.Model):
    """Model for storing hospital information"""
    name = models.CharField(max_length=200)
    address = models.TextField()
    phone = models.CharField(max_length=15)
    email = models.EmailField(blank=True, null=True)
    # Replace JSONField with ManyToManyField
    specialties = models.ManyToManyField(Specialty, related_name='hospitals')
    rating = models.DecimalField(max_digits=3, decimal_places=1, default=0.0)
    is_active = models.BooleanField(default=True)
    has_emergency = models.BooleanField(default=False)
    latitude = models.DecimalField(max_digits=9, decimal_places=6, null=True, blank=True)
    longitude = models.DecimalField(max_digits=9, decimal_places=6, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "Hospital"
        verbose_name_plural = "Hospitals" 