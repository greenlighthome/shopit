from django.contrib import admin
from web_shop.models import Product, Condition, ShippingMethod

admin.site.register(Product)
admin.site.register(Condition)
admin.site.register(ShippingMethod)


