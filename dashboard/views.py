from accounts.models import UserProfile
from categories.models import Category
from dashboard.models import ProductForm
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.shortcuts import get_object_or_404
from django.views.generic import CreateView, UpdateView, DeleteView, DetailView, ListView
from web_shop.models import Product


class DashboardView(CreateView):
    """
    Validates the process of adding products to the market but the form is displayed
    in actions.html and rendered by class UserActions.
    """
    model = Product
    form_class = ProductForm
    template_name = 'dashboard/dashboard.html'

    def get_context_data(self, **kwargs):
        context = super(DashboardView, self).get_context_data(**kwargs)
        context['title'] = 'Dashboard'
        context['user'] = User.objects.all()
        return context

    def form_valid(self, form):
        form.instance.saler = self.request.user
        return super(DashboardView, self).form_valid(form)


class UserActions(ListView):
    """
    Compact view of products on sale by the active user where farther actions can be
    taken (add, remove, update)
    """
    model = Product
    template_name = 'dashboard/actions.html'
    context_object_name = 'product_list'

    def get_queryset(self):
        self.saler = get_object_or_404(User, username=self.args[0])
        return Product.objects.filter(saler=self.saler)

    def get_context_data(self, **kwargs):
        context = super(UserActions, self).get_context_data(**kwargs)
        context['form'] = ProductForm()
        context['user'] = UserProfile.objects.all()
        context['title'] = 'Actions'
        return context


class ProductUpdate(UpdateView):
    model = Product
    form_class = ProductForm
    template_name = 'dashboard/update.html'

    def get_context_data(self, **kwargs):
        context = super(ProductUpdate, self).get_context_data(**kwargs)
        context['title'] = 'Update Article'
        context['user'] = User.objects.all()
        return context

    def form_valid(self, form):
        form.instance.saler = self.request.user
        return super(ProductUpdate, self).form_valid(form)


class ProductDelete(DeleteView):
    model = Product
    template_name = 'dashboard/delete.html'

    def get_success_url(self):
        return reverse('dashboard')

    def get_context_data(self, **kwargs):
        context = super(ProductDelete, self).get_context_data(**kwargs)
        context['title'] = 'Delete Article'
        return context



class DashboardDetailView(DetailView):
    """ Detailed view of a specific article """
    model = Product
    template_name = 'dashboard/dashboard_details.html'
    context_object_name = 'product'

    def get_context_data(self, **kwargs):
        context = super(DashboardDetailView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['title'] = 'Details'
        return context


class UserAccount(ListView):
    model = UserProfile
    template_name = 'dashboard/account.html'

    def get_context_data(self, **kwargs):
        context = super(UserAccount, self).get_context_data(**kwargs)
        context['user'] = UserProfile.objects.all()
        context['title'] = 'Account'
