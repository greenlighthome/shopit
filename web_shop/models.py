from django.core.urlresolvers import reverse
from django.db import models
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify


class Category(models.Model):
    name = models.CharField(max_length=30)

    def __unicode__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('products-by-category', kwargs={'slug': slugify(self.nameeddie), 'pk': self.id})


class Condition(models.Model):
    condition = models.CharField(max_length=30)

    def __unicode__(self):
        return self.condition


class Address(models.Model):
    """ Standard German/Austria format """
    street = models.TextField(max_length=60)
    number = models.IntegerField()
    door = models.TextField(max_length=50)
    district = models.TextField(max_length=50)
    postal_code = models.IntegerField(max_length=4)
    province = models.TextField(max_length=50)
    country = models.TextField(max_length=50)

    def __str__(self):
        return self.street + " " + self.number


class WebUser(models.Model):
    user = models.OneToOneField(User)
    address = models.ForeignKey(Address)


class Product(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.TextField(max_length=100)
    name = models.CharField(max_length=50)
    condition = models.ForeignKey(Condition)
    date_added = models.DateField(auto_now=True)
    quantity = models.PositiveIntegerField()
    price = models.DecimalField(max_digits=6, decimal_places=2)
    description = models.TextField()
    category = models.ForeignKey(Category)
    image = models.ImageField(upload_to='images/products/%Y/%m/%d', blank=True)
    saler = models.ForeignKey(User)

    def __unicode__(self):
        return self.name

    def get_absolute_url_1(self):
        return reverse('detail-view', kwargs={'slug': slugify(self.title), 'pk': self.id})

    def get_absolute_url(self):
        return reverse('dashboard-detail-view', kwargs={'slug': slugify(self.name), 'pk': self.id})
