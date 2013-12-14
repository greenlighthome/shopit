from django.contrib.auth.models import User
from django.forms import ModelForm
from web_shop.models import Product
from django.forms.widgets import Textarea, TextInput, Select, NumberInput, EmailInput, DateInput, SelectMultiple, ChoiceInput
from members.models import MyUser
from members.models import COUNTRIES, YEAR, MONTH, DAY


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
            'description': Textarea(attrs={'cols': 46, 'rows': 5, 'required': True}),
            'shipping_cost': NumberInput(attrs={'required': True, 'size': 3})
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


class AccountUpdateForm(ModelForm):
    class Meta:
        model = MyUser
        fields = ['first_name', 'last_name', 'year_of_birth', 'month_of_birth', 'day_of_birth', 'email', 'street', 'number', 'door', 'district', 'postal_code', 'province', 'country',]
        widgets = {
            'first_name': TextInput(attrs={'required': True, 'size': 20, 'placeholder': ' First name'}),
            'last_name': TextInput(attrs={'required': True, 'size': 20, 'placeholder': 'Last name'}),
            'email': EmailInput(attrs={'required': True, 'size': 30, 'placeholder': ' Email'}),
            'year_of_birth': Select(choices=YEAR),
            'month_of_birth': Select(choices=MONTH),
            'day_of_birth': Select(choices=DAY),
            'street': TextInput(attrs={'size': 22, 'placeholder': ' Street'}),
            'number': NumberInput(attrs={'required': True, 'size': 2, 'placeholder': ' 00'}),
            'door': NumberInput(attrs={'size': 2, 'placeholder': ' 00'}),
            'district': TextInput(attrs={'required': True, 'size': 20, 'placeholder': ' District'}),
            'postal_code': NumberInput(attrs={'required': True, 'size': 4, 'placeholder': ' PLZ'}),
            'province': TextInput(attrs={'required': True, 'size': 20, 'placeholder': ' Province'}),
            'country': Select(choices=COUNTRIES)
        }