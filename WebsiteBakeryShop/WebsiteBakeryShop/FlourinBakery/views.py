from django.shortcuts import render
from .models import Product

def home(request):
    return render(request, 'home/index.html')

def about(request):
    return render(request, 'home/about.html')

def myOrders(request):
    return render(request, 'home/myOrders.html')

def contact(request):
    return render(request, 'home/contact.html')

def login(request):
    return render(request, 'home/login.html')

def product_list(request):
    products = Product.objects.all()  # Query all products
    return render(request, 'home/products.html', {'products': products})

