
from django.shortcuts import render_to_response, redirect
from django.template import RequestContext
from web_shop.models import ProductForm, Product
from shopit.settings import MEDIA_URL

# See: https://docs.djangoproject.com/en/dev/ref/request-response/

def index(request):
    product_list = Product.objects.all()
    return render_to_response('index.html', {'title': 'index', 'product_list': product_list})


def add(request):
    product_form = ProductForm(request.POST, request.FILES)
    if product_form.is_valid():
        product_form.save()
        return redirect(index)
    return render_to_response('add_product.html', {'title': 'Add Product', 'product': product_form, 'media_url': MEDIA_URL},
                            context_instance=RequestContext(request))



# See: http://www.djangobook.com/en/2.0/chapter09.html