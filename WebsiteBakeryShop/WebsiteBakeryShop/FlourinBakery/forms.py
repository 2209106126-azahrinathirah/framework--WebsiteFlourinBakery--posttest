from django import forms
from .models import Product

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product  # Menentukan model yang akan digunakan
        fields = ['name', 'category', 'description', 'price', 'stock', 'image']  # Daftar field yang ingin ditampilkan dalam form
        widgets = {
            'description': forms.Textarea(attrs={'rows': 4, 'cols': 40}),  # Custom widget untuk field description
            'price': forms.NumberInput(attrs={'step': '0.01'}),  # Custom widget untuk field price
        }
