from django.shortcuts import render_to_response, redirect
from django.template import RequestContext
from web_shop.models import ProductForm, Product, Category
from shopit.settings import MEDIA_URL

# See: https://docs.djangoproject.com/en/dev/ref/request-response/


def welcome(request):
    categories = Category.objects.all()
    return render_to_response('web_shop/index.html', {'title': 'Welcome to Shopit', 'categories': categories})


def market(request):
    product_list = Product.objects.all()
    return render_to_response('web_shop/market.html', {'title': 'Market place', 'product_list': product_list})


def add_product(request):
    product_form = ProductForm(request.POST, request.FILES)
    if product_form.is_valid():
        product_form.save()
        return redirect(market)
    return render_to_response('web_shop/add_product.html', {'title': 'Add a new product',
                            'product': product_form, 'media_url': MEDIA_URL},
                            context_instance=RequestContext(request))


# See: http://www.djangobook.com/en/2.0/chapter09.html