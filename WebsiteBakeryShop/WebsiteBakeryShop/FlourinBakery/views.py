from django.shortcuts import render

def home(request):
    return render(request, 'home/index.html')

def about(request):
    return render(request, 'home/about.html')

def products(request):
    return render(request, 'home/products.html')

def myOrders(request):
    return render(request, 'home/myOrders.html')

def contact(request):
    return render(request, 'home/contact.html')

def login(request):
    return render(request, 'home/login.html')
