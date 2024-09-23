from django.db import models
from django.contrib.auth.models import User
from .products import Product

class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)  # Satu user bisa memiliki banyak Cart
    products = models.ManyToManyField(Product, through='CartItem')  # Banyak-ke-banyak dengan Product

    def __str__(self):
        return f"Cart milik {self.user.username}"

class CartItem(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)

    def __str__(self):
        return f"{self.product.name} dalam cart"
