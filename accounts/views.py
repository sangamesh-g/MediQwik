def hospitals(request):
    template_name = 'hospitals.html'
    selected_specialty = request.GET.get('specialty')
    
    # Get all specialties for the filter section
    specialties = Specialty.objects.all()
    
    # Filter hospitals
    if selected_specialty:
        hospitals = Hospital.objects.filter(
            specialties__slug=selected_specialty,
            is_active=True
        ).distinct()
    else:
        hospitals = Hospital.objects.filter(is_active=True)
        
    context = {
        'hospitals': hospitals,
        'specialties': specialties,
        'selected_specialty': selected_specialty
    }
    return render(request, template_name, context) 