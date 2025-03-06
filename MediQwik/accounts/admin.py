from django.contrib import admin
from .models import Register, Login

@admin.register(Register)
class RegisterAdmin(admin.ModelAdmin):
    list_display = ('email', 'first_name', 'last_name', 'phone', 'date_registered', 'is_active')
    search_fields = ('email', 'first_name', 'last_name', 'phone')
    list_filter = ('is_active', 'gender', 'date_registered')
    readonly_fields = ('date_registered', 'last_updated')

@admin.register(Login)
class LoginAdmin(admin.ModelAdmin):
    list_display = ('user', 'login_time', 'logout_time', 'ip_address', 'is_successful')
    search_fields = ('user__email', 'ip_address')
    list_filter = ('is_successful', 'login_time')
    readonly_fields = ('login_time', 'logout_time')
