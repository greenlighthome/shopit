from django.core.context_processors import csrf
from django.shortcuts import render_to_response
from web_shop.models import Product


def search_product(request):

    args = {}
    args.update(csrf(request))
    args['product'] = Product.objects.all()

    if request.method == 'POST':
        search_text = request.POST['search_text']
    else:
        search_text = ''

    product = Product.objects.filter(title__contains=search_text)

    return render_to_response('search/ajax_search.html', {'product': product, 'args': args})