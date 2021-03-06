from categories.models import Category
from dashboard.forms import ProductForm, AccountUpdateForm
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import get_object_or_404, render_to_response
from django.views.generic import CreateView, UpdateView, DeleteView, DetailView, ListView, TemplateView
from web_shop.models import Product
from members.models import MyUser
from notifications.models import Notifications


def dashboard_view(request):
    user = request.user
    title = 'Dashboard'
    notifications = Notifications.objects.filter(user=request.user, viewed=False)

    return render_to_response('dashboard/dashboard.html', {'user': user, 'title': title, 'notifications': notifications})


class UserActions(SuccessMessageMixin, CreateView, ListView):
    model = Product
    form_class = ProductForm
    success_message = 'Item successfully added'
    template_name = 'dashboard/actions.html'
    context_object_name = 'product_list'

    def get_queryset(self):
        self.saler = get_object_or_404(MyUser, username=self.args[0])
        return Product.objects.filter(saler=self.saler)

    def get_context_data(self, **kwargs):
        context = super(UserActions, self).get_context_data(**kwargs)
        context['form'] = ProductForm()

        context['title'] = 'Actions'
        return context

    def form_valid(self, form):
        form.instance.saler = self.request.user
        return super(UserActions, self).form_valid(form)


class ProductUpdate(SuccessMessageMixin, UpdateView):
    model = Product
    form_class = ProductForm
    success_message = 'Item successfully updated'
    template_name = 'dashboard/product_update.html'

    def get_context_data(self, **kwargs):
        context = super(ProductUpdate, self).get_context_data(**kwargs)
        context['title'] = 'Update Article'
        context['user'] = MyUser.objects.all()
        return context

    def form_valid(self, form):
        return super(ProductUpdate, self).form_valid(form)


class ProductDelete(SuccessMessageMixin, DeleteView):
    model = Product
    success_message = 'Item successfully removed'
    template_name = 'dashboard/product_delete.html'
    success_url = '/dashboard/'

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


class UserAccountView(TemplateView):
    template_name = 'dashboard/account.html'

    def get_context_data(self, **kwargs):
        context = super(UserAccountView, self).get_context_data(**kwargs)
        context['title'] = 'User account'
        context['user'] = MyUser.objects.all()
        return context


class AccountUpdateView(SuccessMessageMixin, UpdateView):
    model = MyUser
    form_class = AccountUpdateForm
    template_name = 'dashboard/account_update.html'
    success_message = 'Account successfully updated'
    success_url = '/dashboard/account/'

    def get_context_data(self, **kwargs):
        context = super(AccountUpdateView, self).get_context_data(**kwargs)
        context['title'] = 'Account Update'
        context['user'] = MyUser.objects.all()
        return context

    def form_valid(self, form):
        return super(AccountUpdateView, self).form_valid(form)