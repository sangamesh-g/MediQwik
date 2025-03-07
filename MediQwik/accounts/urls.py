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
] 