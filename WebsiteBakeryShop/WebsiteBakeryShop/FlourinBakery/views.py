from django.shortcuts import render, redirect, get_object_or_404
from .models import Product, Cart, CartItem, Users 
from django.contrib.auth.decorators import login_required
# from django.contrib.auth import authenticate, login
# from django.contrib import messages
from .forms import ProductForm

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
    query = request.GET.get('q')  # Ambil nilai query pencarian dari form
    if query:
        products = Product.objects.filter(name__icontains=query)  # Pencarian berdasarkan nama produk
    else:
        products = Product.objects.all()  # Tampilkan semua produk jika tidak ada pencarian
    
    return render(request, 'home/products.html', {'products': products, 'query': query})

def add_product(request):
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)  # Pastikan untuk menyertakan request.FILES untuk upload gambar
        if form.is_valid():
            form.save()  # Simpan produk baru
            return redirect('product_list')  # Alihkan ke daftar produk setelah berhasil
    else:
        form = ProductForm()

    return render(request, 'products/create.html', {'form': form})

def edit_product(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES, instance=product)
        if form.is_valid():
            form.save()
            return redirect('product_list')  # Ganti dengan URL yang sesuai
    else:
        form = ProductForm(instance=product)

    return render(request, 'products/update.html', {'form': form, 'product': product})

def delete_product(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    if request.method == 'POST':
        product.delete()
        return redirect('product_list')  # Ganti dengan URL yang sesuai

    return render(request, 'products/delete.html', {'product': product})

@login_required
def cart(request):
    # Dapatkan cart pengguna saat ini
    cart = Cart.objects.filter(user=request.user).first()
    cart_items = cart.cartitem_set.all() if cart else []
    
    total_price = sum(item.product.price * item.quantity for item in cart_items)

    context = {
        'cart': cart,
        'cart_items': cart_items,
        'total_price': total_price,
    }
    return render(request, 'home/cart.html', context)

@login_required
def add_to_cart(request, product_id):
    product = get_object_or_404(Product, id=product_id)  # Dapatkan produk berdasarkan ID
    cart, created = Cart.objects.get_or_create(user=request.user)  # Dapatkan atau buat cart untuk user

    # Periksa apakah produk sudah ada di dalam keranjang
    cart_item, created = CartItem.objects.get_or_create(cart=cart, product=product)

    if not created:
        # Jika sudah ada di dalam cart, tambahkan kuantitasnya
        cart_item.quantity += 1
        cart_item.save()

    return redirect('cart')  # Kembalikan ke halaman cart

@login_required
def profile(request):
    return render(request, 'home/profile.html') 

def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        # Authenticate the user using the custom Users model
        user = authenticate(request, username=username, password=password)

        if user is not None:
            auth_login(request, user)
            messages.success(request, 'Login successful!')
            return redirect('home')  # Redirect to home after successful login
        else:
            messages.error(request, 'Invalid username or password')

    return render(request, 'registration/login.html')  # Render login template

def register(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        role = request.POST['role']

        # Validate for unique username
        if Users.objects.filter(username=username).exists():
            messages.error(request, 'Username already exists.')
            return redirect('register')

        # Create a new user with a hashed password
        user = Users(username=username, password=make_password(password), role=role)
        user.save()

        # Create user profile
        Profil.objects.create(user=user)

        messages.success(request, 'Registration successful! You can now login.')
        return redirect('login')  # Redirect to login page after registration

    return render(request, 'registration/register.html')
