from django.contrib import admin
from web_shop.models import Product, Condition, Address, ShippingMethod

admin.site.register(Product)
admin.site.register(Condition)
admin.site.register(Address)
admin.site.register(ShippingMethod)

