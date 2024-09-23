from django.db import models
from .cart import Cart

class Order(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE)  # Satu Cart bisa memiliki banyak Order
    order_date = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=100, choices=[('pending', 'Pending'), ('completed', 'Completed')])
    total_amount = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f"Order #{self.id} - {self.status}"
