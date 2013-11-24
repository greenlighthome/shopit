from django.shortcuts import render_to_response, redirect, get_object_or_404
from django.template import RequestContext
from django.views.generic import ListView, DetailView
from web_shop.models import ProductForm, Product, Category
from shopit.settings import MEDIA_URL
from django.contrib.auth.decorators import login_required


class ListProductView(ListView):
    model = Product
    template_name = 'web_shop/market.html'

    def get_context_data(self, **kwargs):
        context = super(ListProductView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        return context


class ProductView(DetailView):
    model = Product
    template_name = 'web_shop/details.html'

    def get_context_data(self, **kwargs):
        context = super(ProductView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        return context


class ProductByCategory(ListView):
    template_name = 'web_shop/products_by_category.html'

    def get_queryset(self):
        self.category = get_object_or_404(Category, name=self.args[0])
        return Product.objects.filter(category = self.category)

    def get_context_data(self, **kwargs):
        context = super(ProductByCategory, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['title'] = self.category
        return context


def welcome(request):
    categories = Category.objects.all()
    return render_to_response('web_shop/index.html', {'title': 'Welcome to Shopit', 'categories': categories})

@login_required
def add_product(request):
    product_form = ProductForm(request.POST, request.FILES)
    if product_form.is_valid():
        link = product_form.save(commit=False)
        link.saler = request.user
        link.save()
        return redirect('product-list')
    return render_to_response('web_shop/add_product.html', {'title': 'Add a new product',
                            'product': product_form, 'media_url': MEDIA_URL},
                            context_instance=RequestContext(request))
