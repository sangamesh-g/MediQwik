from django.contrib import admin
from .models import Register, Login, Hospital, Specialty

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

@admin.register(Specialty)
class SpecialtyAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug', 'icon')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ('name',)

@admin.register(Hospital)
class HospitalAdmin(admin.ModelAdmin):
    list_display = ('name', 'rating', 'has_emergency', 'is_active', 'get_specialties')
    search_fields = ('name', 'address')
    list_filter = ('is_active', 'has_emergency', 'rating', 'specialties')
    filter_horizontal = ('specialties',)
    
    def get_specialties(self, obj):
        return ", ".join([specialty.name for specialty in obj.specialties.all()])
    get_specialties.short_description = 'Specialties' 