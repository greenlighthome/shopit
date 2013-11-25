from dashboard.models import ProductForm
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse_lazy, reverse
from django.shortcuts import get_object_or_404
from django.views.generic import CreateView, UpdateView, DeleteView
from web_shop.models import Product
from web_shop.views import ListProductView


class DashboardView(CreateView):
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


class ListProductsFromUser(ListProductView):
    """
    Displays the list of products on sale by the user
    where farther actions can be taken (update article, delete article)

    """
    template_name = 'dashboard/actions.html'
    context_object_name = 'product_list'

    def get_queryset(self):
        self.saler = get_object_or_404(User, username=self.args[0])
        return Product.objects.filter(saler=self.saler)

    def get_context_data(self, **kwargs):
        context = super(ListProductView, self).get_context_data(**kwargs)

        context['title'] = 'Actions'
        return context


class ProductUpdate(UpdateView):
    model = Product
    form_class = ProductForm
    template_name = 'dashboard/update.html'

    def get_context_data(self, **kwargs):
        context = super(ProductUpdate, self).get_context_data(**kwargs)
        context['title'] = 'Update'
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


