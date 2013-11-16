from django.shortcuts import render_to_response, redirect
from django.template import RequestContext
from web_shop.models import ProductForm, Product
import os

def index(request):
    product_list = Product.objects.all()
    return render_to_response('index.html', {'title': 'index', 'product_list': product_list})


def add(request):
    form = ProductForm(request.POST, request.FILES)
    if form.is_valid():
        form.save()
        return redirect(index)
    return render_to_response('add_product.html', {'title': 'Add Product', 'product': form},
                            context_instance=RequestContext(request))