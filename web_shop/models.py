from django.core.urlresolvers import reverse
from django.db import models
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify


class Category(models.Model):
    name = models.CharField(max_length=30)

    def __unicode__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('products-by-category', kwargs={'slug': slugify(self.name), 'pk': self.id})


class Condition(models.Model):
    condition = models.CharField(max_length=30)

    def __unicode__(self):
        return self.condition


class Product(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.TextField(max_length=100)
    name = models.CharField(max_length=50)
    condition = models.ForeignKey(Condition)
    quantity = models.PositiveIntegerField()
    price = models.DecimalField(max_digits=6, decimal_places=2)
    description = models.TextField()
    category = models.ForeignKey(Category)
    image = models.ImageField(upload_to='images/products/%Y/%m/%d', blank=True)
    saler = models.ForeignKey(User)

    def __unicode__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('detail-view', kwargs={'slug': slugify(self.title), 'pk': self.id})


