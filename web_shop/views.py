from django.contrib.auth.models import User
from django.core.mail import send_mail, EmailMultiAlternatives
from accounts.models import UserProfile
from categories.models import Category
from django.shortcuts import get_object_or_404, render_to_response
from django.template import Context
from django.template.loader import get_template
from django.views.generic import ListView, DetailView
from shopit.settings import EMAIL_HOST_USER, BASE_DIR
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


def confirmation_view(request, product_id, saler_id):
    product = Product.objects.get(id=product_id)
    email = request.user.email
    user = request.user
    saler = User.objects.get(id=saler_id)
    total = product.shipping_cost + product.price
    html = get_template('email/confirmation.html')
    d = Context({'user': user, 'product': product, 'saler': saler, 'total': total})

    html_content = html.render(d)

    msg = EmailMultiAlternatives('subject', html_content, EMAIL_HOST_USER, [email])
    msg.attach_alternative(html_content, 'text/html')
    msg.attach_file(BASE_DIR + product.image.url)
    msg.send()
    if id:
        a = Product.objects.get(id=product_id)
        count = a.quantity
        count += 1     # <--------- on production this should be changed to 'count -= 1'
        a.quantity = count
        a.save()
    return render_to_response('web_shop/confirmation.html',
                              {'title': 'Congratulations', 'product': product})