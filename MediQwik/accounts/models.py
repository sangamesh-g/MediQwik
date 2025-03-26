from django.db import models
from django.urls import reverse

class Register(models.Model):
    """Model for storing user registration data"""
    # Personal Information
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=15)
    date_of_birth = models.DateField()
    GENDER_CHOICES = [
        ('male', 'Male'),
        ('female', 'Female'),
        ('other', 'Other')
    ]
    gender = models.CharField(max_length=10, choices=GENDER_CHOICES)
    
    # Authentication
    password = models.CharField(max_length=128)  # Will store hashed password
    
    # Additional Information
    address = models.TextField(blank=True, null=True)
    city = models.CharField(max_length=100, blank=True, null=True)
    state = models.CharField(max_length=100, blank=True, null=True)
    zip_code = models.CharField(max_length=10, blank=True, null=True)
    
    # Account Status
    is_active = models.BooleanField(default=True)
    terms_accepted = models.BooleanField(default=False)
    date_registered = models.DateTimeField(auto_now_add=True)
    last_updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.first_name} {self.last_name} ({self.email})"

    class Meta:
        verbose_name = "Registered User"
        verbose_name_plural = "Registered Users"

class Login(models.Model):
    """Model for tracking user login sessions"""
    user = models.ForeignKey(Register, on_delete=models.CASCADE)
    login_time = models.DateTimeField(auto_now_add=True)
    logout_time = models.DateTimeField(null=True, blank=True)
    ip_address = models.GenericIPAddressField(null=True, blank=True)
    is_successful = models.BooleanField(default=True)
    remember_me = models.BooleanField(default=False)
    user_agent = models.TextField(blank=True, null=True)

    def __str__(self):
        return f"{self.user.email} - {self.login_time} - {self.ip_address}"

    class Meta:
        verbose_name = "Login Session"
        verbose_name_plural = "Login Sessions"

class Specialty(models.Model):
    """Model for medical specialties"""
    name = models.CharField(max_length=100)
    slug = models.SlugField(unique=True)
    icon = models.CharField(max_length=50)
    description = models.TextField(blank=True, null=True)
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = "Specialty"
        verbose_name_plural = "Specialties"

class Hospital(models.Model):
    """Model for storing hospital information"""
    name = models.CharField(max_length=200)
    address = models.TextField()
    phone = models.CharField(max_length=15)
    email = models.EmailField(blank=True, null=True)
    specialties = models.JSONField(default=list)  # Keep the old field
    specialty_relations = models.ManyToManyField('Specialty', blank=True)  # Add new field with string reference
    rating = models.DecimalField(max_digits=3, decimal_places=1, default=0.0)
    is_active = models.BooleanField(default=True)
    has_emergency = models.BooleanField(default=False)
    latitude = models.DecimalField(max_digits=9, decimal_places=6, null=True, blank=True)
    longitude = models.DecimalField(max_digits=9, decimal_places=6, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

    def get_directions_url(self):
        """
        Generate a Google Maps directions URL based on latitude/longitude
        or fall back to address if coordinates aren't available
        """
        if self.latitude and self.longitude:
            return f"https://www.google.com/maps/dir/?api=1&destination={self.latitude},{self.longitude}"
        elif self.address:
            # If no coordinates, use the address (less precise)
            formatted_address = self.address.replace(' ', '+')
            return f"https://www.google.com/maps/dir/?api=1&destination={formatted_address}"
        return None

    class Meta:
        verbose_name = "Hospital"
        verbose_name_plural = "Hospitals"

