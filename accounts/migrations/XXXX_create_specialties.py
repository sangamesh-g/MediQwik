from django.db import migrations

def create_specialties(apps, schema_editor):
    Specialty = apps.get_model('accounts', 'Specialty')
    Hospital = apps.get_model('accounts', 'Hospital')
    
    # Create specialty objects with icons
    specialties = {
        'cardiology': {'slug': 'cardiology', 'icon': 'fas fa-heartbeat', 'description': 'Heart and cardiovascular treatment'},
        'dental': {'slug': 'dental', 'icon': 'fas fa-tooth', 'description': 'Dental care and oral health'},
        'dermatology': {'slug': 'dermatology', 'icon': 'fas fa-allergies', 'description': 'Skin conditions and treatments'},
        'ent': {'slug': 'ent', 'icon': 'fas fa-ear', 'description': 'Ear, nose and throat specialists'},
        'eye': {'slug': 'eye', 'icon': 'fas fa-eye', 'description': 'Eye care and vision specialists'},
        'gastrology': {'slug': 'gastrology', 'icon': 'fas fa-stomach', 'description': 'Digestive system specialists'},
        'general': {'slug': 'general', 'icon': 'fas fa-user-md', 'description': 'General medical care'},
        'gynecology': {'slug': 'gynecology', 'icon': 'fas fa-female', 'description': 'Women\'s health specialists'},
        'neurology': {'slug': 'neurology', 'icon': 'fas fa-brain', 'description': 'Brain and nervous system specialists'},
        'orthopedics': {'slug': 'orthopedics', 'icon': 'fas fa-bone', 'description': 'Bone and joint specialists'},
        'pediatrics': {'slug': 'pediatrics', 'icon': 'fas fa-baby', 'description': 'Children\'s healthcare'},
        'physiotherapy': {'slug': 'physiotherapy', 'icon': 'fas fa-walking', 'description': 'Physical therapy and rehabilitation'},
        'plastic-surgery': {'slug': 'plastic-surgery', 'icon': 'fas fa-magic', 'description': 'Cosmetic and reconstructive surgery'},
        'pulmonology': {'slug': 'pulmonology', 'icon': 'fas fa-lungs', 'description': 'Lung and respiratory specialists'},
        'urology': {'slug': 'urology', 'icon': 'fas fa-kidneys', 'description': 'Urinary tract specialists'},
    }
    
    specialty_objects = {}
    for name, data in specialties.items():
        specialty = Specialty.objects.create(
            name=name.replace('-', ' ').title(),
            slug=data['slug'],
            icon=data['icon'],
            description=data['description']
        )
        specialty_objects[name] = specialty
    
    # Convert existing hospital data
    for hospital in Hospital.objects.all():
        # Get existing specialties from JSONField
        existing_specialties = []
        try:
            if isinstance(hospital.specialties, list):
                existing_specialties = hospital.specialties
            elif isinstance(hospital.specialties, str):
                import json
                existing_specialties = json.loads(hospital.specialties)
        except:
            pass
        
        # Clear the old field
        hospital.specialties.clear()
        
        # Add new M2M relationships
        for specialty_name in existing_specialties:
            if specialty_name in specialty_objects:
                hospital.specialties.add(specialty_objects[specialty_name])

def reverse_migration(apps, schema_editor):
    # This migration cannot be reversed easily
    pass

class Migration(migrations.Migration):
    dependencies = [
        ('accounts', '####_previous_migration'),  # Update this to your previous migration
    ]

    operations = [
        migrations.RunPython(create_specialties, reverse_migration),
    ] 