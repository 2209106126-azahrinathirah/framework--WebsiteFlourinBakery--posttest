from django.contrib import admin
from .models import Users, Profil

class UsersAdmin(admin.ModelAdmin):
    list_display = ('username', 'role')
    search_fields = ('username',)
    list_filter = ('role',)

class ProfilAdmin(admin.ModelAdmin):
    list_display = ('user', 'phone')
    search_fields = ('user__username', 'phone')
    ordering = ('user__username',)
    readonly_fields = ('user',)

admin.site.register(Users, UsersAdmin)
admin.site.register(Profil, ProfilAdmin)
