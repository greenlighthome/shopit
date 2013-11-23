from django.conf.urls import url, patterns
from shopit.settings import MEDIA_ROOT
from web_shop.models import Category
from web_shop import views
from web_shop.views import ProductByCategory

categories = { Category.objects.all() }

urlpatterns = patterns('',
    url(r'^$', 'web_shop.views.welcome'),
    url(r'^market/add_product$', 'web_shop.views.add_product'),

    url(r'^market/$', views.ListProductView.as_view(), name='product-list'),

    url(r'^market/(?P<slug>[\w|\W]+)-(?P<pk>\d+)/$', views.ProductView.as_view(), name='detail-view'),

    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': MEDIA_ROOT, 'show_indexes':True}),

    url(r'^category/([\w-]+)/$', ProductByCategory.as_view())
)