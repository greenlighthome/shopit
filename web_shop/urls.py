from django.conf.urls import url, patterns
from shopit.settings import MEDIA_ROOT
from web_shop import views



urlpatterns = patterns('',
    url(r'^$', views.WelcomeView.as_view(), name='Welcome   '),

    url(r'^market/$', views.ListProductView.as_view(), name='product-list'),

    url(r'^market/(?P<slug>[\w|\W]+)-(?P<pk>\d+)/$', views.ProductView.as_view(), name='detail-view'),

    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': MEDIA_ROOT, 'show_indexes':True}),

    url(r'^category/([\w-]+)/$', views.ProductByCategory.as_view())
)