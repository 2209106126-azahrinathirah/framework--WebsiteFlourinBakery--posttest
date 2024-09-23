from django.db import models

class Users(models.Model):
    ADMIN = 1
    USER = 2
    ROLE_CHOICES = (
        (ADMIN, 'Admin'),
        (USER, 'User'),
    )

    username = models.CharField(max_length=150, unique=True)
    password = models.CharField(max_length=128)  # Panjang standar untuk password hash di Django
    role = models.IntegerField(choices=ROLE_CHOICES)  # 1 = Admin, 2 = User

    def __str__(self):
        return self.username

class Profil(models.Model):
    user = models.OneToOneField(Users, on_delete=models.CASCADE)  # Relasi satu-ke-satu dengan Users
    phone = models.CharField(max_length=15, blank=True, null=True)
    avatar = models.ImageField(upload_to='avatars/', blank=True, null=True)

    def __str__(self):
        return f"Profil dari {self.user.username}"
