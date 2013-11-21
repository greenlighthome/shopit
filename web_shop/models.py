from django.db import models
from django.forms import ModelForm
from django.forms.widgets import Textarea, TextInput, Select, NumberInput


class Category(models.Model):
    name = models.CharField(max_length=30)

    def __unicode__(self):
        return self.name

class Condition(models.Model):
    condition = models.CharField(max_length=30)

    def __unicode__(self):
        return self.condition

class Product(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.TextField(max_length=100)
    name = models.CharField(max_length=50)
    condition = models.ForeignKey(Condition)
    price = models.DecimalField(max_digits=6, decimal_places=2)
    description = models.TextField()
    category = models.ForeignKey(Category)
    image = models.ImageField(upload_to='images/products/%Y/%m/%d', blank=True)


class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = ['name', 'description', 'category', 'image', 'title', 'price', 'condition']
        widgets = {
            'title': TextInput(attrs={'required': True, 'size': 39, 'autofocus': True}),
            'name': TextInput(attrs={'required': True, 'size': 28}),
            'condition': Select(attrs={'required': True}),
            'price': NumberInput(attrs={'required': True, 'localize': True, 'size': 8, 'placeholder': '00,00'}),
            'category': Select(attrs={'required': True}),
            'description': Textarea(attrs={'cols': 60, 'rows': 8, 'required': True})
        }