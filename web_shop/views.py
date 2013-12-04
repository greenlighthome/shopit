from accounts.models import UserProfile
from categories.models import Category
from django.contrib.auth.models import User
from django.core.mail import send_mail
from django.shortcuts import get_object_or_404
from django.views.generic import ListView, DetailView
from shopit.settings import EMAIL_HOST_USER
from web_shop.models import Product


class WelcomeView(ListView):
    """ Index page """
    model = Category
    template_name = 'web_shop/index.html'

    def get_context_data(self, **kwargs):
        context = super(WelcomeView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['user'] = UserProfile.objects.all()
        context['title'] = 'Welcome to Shopit'
        return context


class CategoryListView(ListView):
    """ List of all parent categories """
    model = Category
    template_name = 'web_shop/market.html'

    def get_context_data(self, **kwargs):
        context = super(CategoryListView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['user'] = UserProfile.objects.all()
        context['title'] = 'Market Place'
        return context


class ProductDetailView(DetailView):
    """ Detailed view of a specific article """
    model = Product
    template_name = 'web_shop/details.html'
    context_object_name = 'product'

    def get_context_data(self, **kwargs):
        context = super(ProductDetailView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['user'] = UserProfile.objects.all()
        context['title'] = 'Details'
        return context


class ProductByCategoryList(ListView):
    model = Product
    template_name = 'web_shop/categories.html'
    context_object_name = 'product_list'

    def get_queryset(self):
        self.category = get_object_or_404(Category, name=self.args[0])
        return Product.objects.filter(category=self.category)

    def get_context_data(self, **kwargs):
        context = super(ProductByCategoryList, self).get_context_data(**kwargs)
        context['user'] = UserProfile.objects.all()
        context['category_list'] = Category.objects.all()

        context['title'] = self.category
        return context


class ConfirmationView(DetailView):
    model = Product
    template_name = 'web_shop/confirmation.html'
    context_object_name = 'product'

    def get_context_data(self, **kwargs):
        context = super(ConfirmationView, self).get_context_data(**kwargs)
        context['title'] = 'Congratilations'
        return context

