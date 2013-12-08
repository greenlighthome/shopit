from accounts.models import UserProfile
from django.contrib.auth.models import User
from django.forms import ModelForm
from web_shop.models import Product
from django.forms.widgets import Textarea, TextInput, Select, NumberInput, EmailInput


class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = ['name', 'description', 'category', 'image', 'title', 'price', 'condition', 'quantity', 'shipping_method', 'shipping_cost']
        widgets = {
            'title': TextInput(attrs={'required': True, 'size': 39, 'autofocus': True}),
            'name': TextInput(attrs={'required': True, 'size': 28}),
            'condition': Select(attrs={'required': True}),
            'price': NumberInput(attrs={'required': True, 'localize': True, 'size': 8, 'placeholder': '00,00'}),
            'quantity': NumberInput(attrs={'required': True, 'localize': True, 'size': 4, 'placeholder': '0'}),
            'category': Select(attrs={'required': True}),
            'description': Textarea(attrs={'cols': 50, 'rows': 5, 'required': True}),
            'shipping_cost' : NumberInput(attrs={'required': True, 'size': 3})
        }


class UserForm(ModelForm):
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'email']
        widgets = {
           'first_name': TextInput(attrs={'required': True, 'size': 28}),
           'last_name': TextInput(attrs={'required': True, 'size': 28}),
           'email': EmailInput(attrs={'required': True, 'size': 28}),
        }