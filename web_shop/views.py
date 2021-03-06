from django.core.context_processors import csrf
from django.core.mail import EmailMultiAlternatives
from categories.models import Category
from django.shortcuts import get_object_or_404, render_to_response
from django.template import Context
from django.template.loader import get_template
from django.views.generic import ListView, DetailView
from shopit.settings import EMAIL_HOST_USER, BASE_DIR
from web_shop.models import Product
from django.template import RequestContext
from members.models import MyUser


def welcome(request):
    language = 'en-gb'
    session_language = 'en-gb'

    if 'lang' in request.COOKIES:
        language = request.COOKIES['lang']

    if 'lang' in request.session:
        session_language = request.session['lang']

    args = {}
    args.update(csrf(request))

    args['products'] = Product.objects.all()
    args['language'] = language
    args['session_language'] = session_language

    category_list = Category.objects.all()
    title = 'Welcome to Shopit'
    return render_to_response('web_shop/index.html', {'args': args, 'category_list': category_list, 'title': title},
                              context_instance=RequestContext(request))


class CategoryListView(ListView):
    """ List of categories """
    model = Category
    template_name = 'web_shop/market.html'

    def get_context_data(self, **kwargs):
        context = super(CategoryListView, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
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
        context['title'] = 'Details'
        return context


class ProductByCategoryList(ListView):
    model = Product
    template_name = 'web_shop/categories.html'
    context_object_name = 'product_list'

    def get_queryset(self):
        self.category = get_object_or_404(Category, slug=self.args[0]) # changed name=self.args[0] to slug=self.args[0]
        return Product.objects.filter(category=self.category)

    def get_context_data(self, **kwargs):
        context = super(ProductByCategoryList, self).get_context_data(**kwargs)
        context['category_list'] = Category.objects.all()
        context['title'] = self.category
        return context


def confirmation_view(request, product_id, saler_id):
    product = Product.objects.get(id=product_id)
    category_list = Category.objects.all()

    """ Information necesary for email processing """
    user = request.user
    saler = MyUser.objects.get(id=saler_id)
    total = product.shipping_cost + product.price
    d = Context({'user': user, 'product': product, 'saler': saler, 'total': total})

    email = request.user.email
    html = get_template('email/confirmation.html')
    html_content = html.render(d)

    msg = EmailMultiAlternatives('subject', html_content, EMAIL_HOST_USER, [email])
    msg.attach_alternative(html_content, 'text/html')
    msg.attach_file(BASE_DIR + product.image.url)
    msg.send()

    """ Reduce by one the quantity of items in database"""
    if id:
        a = Product.objects.get(id=product_id)
        count = a.quantity
        count -= 1
        a.quantity = count
        a.save()
        """ Delete any item from database is quantity equals zero """
        if count == 0:
            a.delete()
    return render_to_response('web_shop/confirmation.html',
                              {'title': 'Congratulations', 'product': product, 'category_list': category_list, 'user':user},
                                context_instance=RequestContext(request))


def search_titles(request):
    if request.method == 'POST':
        search_text = request.POST['search_text']
    else:
        search_text = ''

    products = Product.objects.filter(title__contains=search_text)
    return render_to_response('web_shop/ajax_search.html', {'products': products},
                              context_instance=RequestContext(request))
