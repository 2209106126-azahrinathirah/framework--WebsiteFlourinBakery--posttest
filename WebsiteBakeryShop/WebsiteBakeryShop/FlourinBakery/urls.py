from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('home/', views.home, name='home'),
    path('about/', views.about, name='about'),
    path('products/', views.products, name='products'),
    path('my-orders/', views.myOrders, name='myOrders'),
    path('contact/', views.contact, name='contact'),
    path('login/', views.login, name='login'),
]
