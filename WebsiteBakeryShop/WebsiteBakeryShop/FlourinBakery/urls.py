from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.home, name='home'),
    path('home/', views.home, name='home'),
    path('about/', views.about, name='about'),
    path('products/', views.product_list, name='product_list'),
    path('my-orders/', views.myOrders, name='myOrders'),
    path('contact/', views.contact, name='contact'),
    path('profile/', views.profile, name='profile'),
    path('cart/', views.cart, name='cart'),
    # path('add_to_cart/<int:product_id>/', views.add_to_cart, name='add_to_cart'),
    path('login/', views.login_view, name='login'),
    path('register/', views.register, name='register'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('products/create/', views.add_product, name='add_product'),# Create
    path('products/update/<int:product_id>', views.edit_product, name='edit_product'),
    path('products/delete/<int:product_id>', views.delete_product, name='delete_product'),
    
    
    
]

