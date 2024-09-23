from django.db import models
from .orders import Order
from django.contrib.auth.models import User

class Checkout(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)  # Relasi satu user banyak checkout
    order = models.OneToOneField(Order, on_delete=models.CASCADE)  # Relasi satu-ke-satu dengan Order
    shipping_address = models.TextField()
    payment_method = models.CharField(max_length=50, choices=[('credit_card', 'Credit Card'), ('paypal', 'PayPal'), ('bank_transfer', 'Bank Transfer')])
    payment_status = models.CharField(max_length=50, choices=[('pending', 'Pending'), ('paid', 'Paid')])
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Checkout untuk Order #{self.order.id} oleh {self.user.username}"
