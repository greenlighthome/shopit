from django.shortcuts import render_to_response, redirect
from django.template import RequestContext
from django.views.generic import ListView, DetailView
from web_shop.models import ProductForm, Product, Category
from shopit.settings import MEDIA_URL


class ListProductView(ListView):
    model = Product
    template_name = 'web_shop/market.html'


class ProductView(DetailView):
    model = Product
    template_name = 'web_shop/details.html'


def base(request):
    categories = Category.objects.all()
    return render_to_response('web_shop/base.html', {'categories': categories})


def welcome(request):
    categories = Category.objects.all()
    return render_to_response('web_shop/index.html', {'title': 'Welcome to Shopit', 'categories': categories})


def add_product(request):
    product_form = ProductForm(request.POST, request.FILES)
    if product_form.is_valid():
        product_form.save()
        return redirect('product-list')
    return render_to_response('web_shop/add_product.html', {'title': 'Add a new product',
                            'product': product_form, 'media_url': MEDIA_URL},
                            context_instance=RequestContext(request))




#def market(request):
#    categories = Category.objects.all()
#    product_list = Product.objects.all()
#    return render_to_response('web_shop/market.html', {'title': 'Market place', 'product_list': product_list, 'categories': categories})
