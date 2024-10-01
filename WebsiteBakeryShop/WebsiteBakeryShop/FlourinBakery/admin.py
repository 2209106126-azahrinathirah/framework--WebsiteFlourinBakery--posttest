from django.contrib import admin
from .models import Category, Product, Users, Profil, Cart, CartItem, Order
from django.utils.html import format_html


class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'thumbnail')  
    search_fields = ('name',)  

    def thumbnail(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="width: 50px; height: auto;"/>', obj.image.url)
        return "No Image"
    thumbnail.short_description = 'Image' 

    def save_model(self, request, obj, form, change):
        # Custom action saat menyimpan model Category
        if not obj.description:
            obj.description = 'Deskripsi tidak tersedia' 
        super().save_model(request, obj, form, change)

class ProductAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'price', 'stock', 'image')  
    list_filter = ('category',) 
    search_fields = ('name', 'category__name')  

    def save_model(self, request, obj, form, change):
        # Custom action saat menyimpan model Product
        if obj.stock < 1:
            obj.stock = 0 
        super().save_model(request, obj, form, change)
        
class UsersAdmin(admin.ModelAdmin):
    list_display = ('username', 'role') 
    list_filter = ('role',)  
    search_fields = ('username',)  

    def save_model(self, request, obj, form, change):
        # Custom action saat menyimpan user
        if obj.role == 1: 
            obj.username = obj.username.lower() 
        super().save_model(request, obj, form, change)

class ProfilAdmin(admin.ModelAdmin):
    list_display = ('user', 'phone') 
    search_fields = ('user__username',) 

    def save_model(self, request, obj, form, change):
        # Custom action saat menyimpan Profil
        if not obj.phone:
            obj.phone = 'Nomor telepon tidak tersedia' 
        super().save_model(request, obj, form, change)
        
class CartItemInline(admin.TabularInline):
    model = CartItem
    extra = 1 

class CartAdmin(admin.ModelAdmin):
    list_display = ('user',)  
    inlines = [CartItemInline]  
    search_fields = ('user__username',) 

    def save_model(self, request, obj, form, change):
        # Custom action saat menyimpan Cart
        super().save_model(request, obj, form, change)

class CartItemAdmin(admin.ModelAdmin):
    list_display = ('cart', 'product', 'quantity')  
    search_fields = ('cart__user__username', 'product__name')  

    def save_model(self, request, obj, form, change):
        # Custom action saat menyimpan CartItem
        if obj.quantity < 1:
            obj.quantity = 1  
        super().save_model(request, obj, form, change)
        
class OrderAdmin(admin.ModelAdmin):
    list_display = ('id', 'cart', 'order_date', 'status', 'total_amount')  
    list_filter = ('status', 'order_date')  
    search_fields = ('cart__user__username',)  

    def save_model(self, request, obj, form, change):
        # Custom action saat menyimpan Order
        if obj.total_amount < 0:
            obj.total_amount = 0  
        super().save_model(request, obj, form, change)

admin.site.register(Category, CategoryAdmin)
admin.site.register(Product, ProductAdmin)
admin.site.register(Users, UsersAdmin)
admin.site.register(Profil, ProfilAdmin)
admin.site.register(Cart, CartAdmin)
admin.site.register(CartItem, CartItemAdmin)
admin.site.register(Order, OrderAdmin)
