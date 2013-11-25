from django.db import models
from django.forms import ModelForm
from web_shop.models import Product
from django.forms.widgets import Textarea, TextInput, Select, NumberInput


class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = ['name', 'description', 'category', 'image', 'title', 'price', 'condition', 'quantity']
        widgets = {
            'title': TextInput(attrs={'required': True, 'size': 39, 'autofocus': True}),
            'name': TextInput(attrs={'required': True, 'size': 28}),
            'condition': Select(attrs={'required': True}),
            'price': NumberInput(attrs={'required': True, 'localize': True, 'size': 8, 'placeholder': '00,00'}),
            'quantity': NumberInput(attrs={'required': True, 'localize': True, 'size': 8, 'placeholder': '0'}),
            'category': Select(attrs={'required': True}),
            'description': Textarea(attrs={'cols': 50, 'rows': 5, 'required': True})
        }
