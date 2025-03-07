from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('register/', views.register_user, name='register'),
    path('login/', views.login_user, name='login'),
    path('logout/', views.logout_user, name='logout'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('check-email/', views.check_email, name='check_email'),
    path('profile/', views.profile, name='profile'),
    path('appointments/', views.appointments, name='appointments'),
    path('emergency/', views.emergency, name='emergency'),
    path('hospital-list/', views.hospital_list, name='hospital_list'),
    path('hospitals/', views.hospitals, name='hospitals'),
    path('medical-history/', views.medical_history, name='medical_history'),
    path('health-surveys/', views.health_surveys, name='health_surveys'),
    path('medicine-delivery/', views.medicine_delivery, name='medicine_delivery'),
    path('insurance/', views.insurance, name='insurance'),
] 