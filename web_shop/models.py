from django.core.urlresolvers import reverse
from django.db import models
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify


class Condition(models.Model):
    condition = models.CharField(max_length=30)

    def __unicode__(self):
        return self.condition


class ShippingMethod(models.Model):
    id = models.AutoField(primary_key=True)
    shipping_method = models.CharField(max_length=50)

    def __unicode__(self):
        return self.shipping_method


class Product(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.TextField(max_length=100)
    name = models.CharField(max_length=50)
    condition = models.ForeignKey(Condition)
    date_added = models.DateField(auto_now=True)
    quantity = models.PositiveIntegerField()
    price = models.DecimalField(max_digits=6, decimal_places=2)
    description = models.TextField()
    category = models.ForeignKey('categories.Category')
    image = models.ImageField(upload_to='images/products/%Y/%m/%d', blank=True)
    saler = models.ForeignKey(User)
    on_stock = models.BooleanField(default=True)
    shipping_method = models.ForeignKey(ShippingMethod)
    shipping_cost = models.DecimalField(max_digits=6, decimal_places=2)

    def __unicode__(self):
        return self.name

    def get_absolute_url_1(self):
        return reverse('detail-view', kwargs={'slug': slugify(self.title), 'pk': self.id})

    def get_absolute_url(self):
        return reverse('dashboard-detail-view', kwargs={'slug': slugify(self.name), 'pk': self.id})
