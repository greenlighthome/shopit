from django.core.urlresolvers import reverse
from django.shortcuts import get_object_or_404, render_to_response
from django.views.generic import ListView, DetailView
from web_shop.models import Product, Category


class ListProductView(ListView):
    """ List of all Available article """
    model = Product
    template_name = 'web_shop/market.html'
    context_object_name = 'product_list'

    def get_context_data(self, **kwargs):
        context = super(ListProductView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['title'] = 'Market Place'
        return context


class ProductView(DetailView):
    """ Detailed view of a specific article """
    model = Product
    template_name = 'web_shop/details.html'
    context_object_name = 'product'

    def get_context_data(self, **kwargs):
        context = super(ProductView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['title'] = 'Details'
        return context


class ProductByCategory(ListView):
    template_name = 'web_shop/products_by_category.html'
    context_object_name = 'product_list'

    def get_queryset(self):
        self.category = get_object_or_404(Category, name=self.args[0])
        return Product.objects.filter(category=self.category)

    def get_context_data(self, **kwargs):
        context = super(ProductByCategory, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['title'] = self.category
        return context


class WelcomeView(ListView):
    """ Index page """
    model = Category
    template_name = 'web_shop/index.html'

    def get_context_data(self, **kwargs):
        context = super(WelcomeView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['title'] = 'Welcome to Shopit'
        return context