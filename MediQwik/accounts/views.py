from django.shortcuts import render, redirect
from django.contrib import messages
from django.http import JsonResponse
from .models import Register, Login, Hospital
from django.contrib.auth.hashers import make_password, check_password
import datetime

def index(request):
    """View for rendering the home page"""
    return render(request, 'index.html')

def register_user(request):
    """Handle user registration form submission"""
    if request.method == 'POST':
        try:
            # Get form data
            first_name = request.POST.get('firstName')
            last_name = request.POST.get('lastName')
            email = request.POST.get('registerEmail')
            phone = request.POST.get('phone')
            dob = request.POST.get('dob')
            gender = request.POST.get('gender')
            password = request.POST.get('registerPassword')
            confirm_password = request.POST.get('confirmPassword')
            terms_accepted = request.POST.get('termsCheck') == 'on'

            # Check if this is an AJAX request
            is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

            # Basic validation
            if password != confirm_password:
                if is_ajax:
                    return JsonResponse({'success': False, 'message': 'Passwords do not match'})
                messages.error(request, 'Passwords do not match')
                return redirect('register')

            # Check if email already exists
            if Register.objects.filter(email=email).exists():
                if is_ajax:
                    return JsonResponse({'success': False, 'message': 'Email already registered'})
                messages.error(request, 'Email already registered')
                return redirect('register')

            # Create new user
            user = Register.objects.create(
                first_name=first_name,
                last_name=last_name,
                email=email,
                phone=phone,
                date_of_birth=dob,
                gender=gender,
                password=make_password(password),  # Hash the password
                terms_accepted=terms_accepted
            )

            if is_ajax:
                return JsonResponse({
                    'success': True, 
                    'message': 'Registration successful! Please login.',
                    'redirect': '/login/'
                })

            messages.success(request, 'Registration successful! Please login.')
            return redirect('login')

        except Exception as e:
            if request.headers.get('X-Requested-With') == 'XMLHttpRequest':
                return JsonResponse({'success': False, 'message': str(e)})
            messages.error(request, f'Registration failed: {str(e)}')
            return redirect('register')

    # If GET request, render the registration form
    return render(request, 'register.html')

def login_user(request):
    """Handle user login form submission"""
    if request.method == 'POST':
        email = request.POST.get('loginEmail')
        password = request.POST.get('loginPassword')
        remember_me = request.POST.get('rememberMe') == 'on'
        
        # Check if this is an AJAX request
        is_ajax = request.headers.get('X-Requested-With') == 'XMLHttpRequest'

        try:
            user = Register.objects.get(email=email)
            
            if check_password(password, user.password):
                # Create login session record
                Login.objects.create(
                    user=user,
                    ip_address=request.META.get('REMOTE_ADDR'),
                    user_agent=request.META.get('HTTP_USER_AGENT'),
                    remember_me=remember_me,
                    is_successful=True
                )

                # Store user info in session
                request.session['user_id'] = user.id
                request.session['user_name'] = f"{user.first_name} {user.last_name}"

                if not remember_me:
                    request.session.set_expiry(0)  # Session expires when browser closes

                if is_ajax:
                    return JsonResponse({
                        'success': True, 
                        'message': f'Welcome back, {user.first_name}!',
                        'redirect': '/dashboard/'
                    })

                messages.success(request, f'Welcome back, {user.first_name}!')
                return redirect('dashboard')
            else:
                # Record failed login attempt
                Login.objects.create(
                    user=user,
                    ip_address=request.META.get('REMOTE_ADDR'),
                    user_agent=request.META.get('HTTP_USER_AGENT'),
                    is_successful=False
                )
                
                if is_ajax:
                    return JsonResponse({'success': False, 'message': 'Invalid password'})
                messages.error(request, 'Invalid password')
                return redirect('login')

        except Register.DoesNotExist:
            if is_ajax:
                return JsonResponse({'success': False, 'message': 'Email not registered'})
            messages.error(request, 'Email not registered')
            return redirect('login')

    # If GET request, render the login form
    return render(request, 'login.html')

def logout_user(request):
    """Handle user logout"""
    if 'user_id' in request.session:
        user_id = request.session['user_id']
        try:
            # Update last login session with logout time
            last_login = Login.objects.filter(
                user_id=user_id,
                logout_time__isnull=True
            ).latest('login_time')
            last_login.logout_time = datetime.datetime.now()
            last_login.save()
        except Login.DoesNotExist:
            pass

        # Clear session
        request.session.flush()
        messages.success(request, 'You have been logged out successfully')
    
    return redirect('index')

def dashboard(request):
    """Render the user dashboard"""
    if 'user_id' not in request.session:
        messages.error(request, 'Please login to access the dashboard')
        return redirect('index')
    
    try:
        user = Register.objects.get(id=request.session['user_id'])
        context = {
            'user': user,
            # Add more context data as needed
        }
        return render(request, 'dashboard.html', context)
    except Register.DoesNotExist:
        request.session.flush()
        messages.error(request, 'User not found')
        return redirect('index')

def check_email(request):
    """AJAX endpoint to check if email is already registered"""
    if request.method == 'POST':
        email = request.POST.get('email', request.POST.get('registerEmail', ''))
        exists = Register.objects.filter(email=email).exists()
        return JsonResponse({
            'success': True,
            'exists': exists,
            'message': 'Email already registered' if exists else 'Email available'
        })
    
    return JsonResponse({
        'success': False,
        'message': 'Invalid request method'
    }, status=400)

def profile(request):
    """Render the user profile page"""
    if 'user_id' not in request.session:
        messages.error(request, 'Please login to access your profile')
        return redirect('login')
    
    try:
        user = Register.objects.get(id=request.session['user_id'])
        context = {
            'user': user
        }
        return render(request, 'profile.html', context)
    except Register.DoesNotExist:
        messages.error(request, 'User not found')
        return redirect('login')

def appointments(request):
    """Render the appointments page"""
    if 'user_id' not in request.session:
        messages.error(request, 'Please login to access appointments')
        return redirect('login')
    return render(request, 'appointments.html')

def emergency(request):
    """Render the emergency services page"""
    if 'user_id' not in request.session:
        messages.error(request, 'Please login to access emergency services')
        return redirect('login')
    return render(request, 'emergency.html')

def hospital_list(request):
    specialty = request.GET.get('specialty')
    # Query hospitals that have the selected specialty
    hospitals = Hospital.objects.filter(
        is_active=True,
        specialties__contains=[specialty]
    ).order_by('-rating')
    
    return render(request, 'hospital_list.html', {
        'hospitals': hospitals,
        'specialty': specialty
    })
