from django.db import models
from django.forms import ModelForm
from django.forms.widgets import Textarea, TextInput, Select


class Category(models.Model):
    name = models.CharField(max_length=30)

    def __unicode__(self):
        return self.name


class Product(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=90)
    description = models.TextField()
    category = models.ForeignKey(Category)
    image = models.ImageField(upload_to='images/products/%Y/%m/%d', blank=True)


class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = ['name', 'description', 'category', 'image']
        widgets = {
            'name': TextInput(attrs={'required': True}),
            'category': Select(attrs={'required': True}),
            'description': Textarea(attrs={'cols': 60, 'rows': 8,'required': True})
        }
