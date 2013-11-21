from django.conf.urls import url, patterns
from shopit.settings import MEDIA_ROOT

urlpatterns = patterns('',
    url(r'^$', 'web_shop.views.welcome'),
    url(r'^add_product$', 'web_shop.views.add_product'),
    url(r'^market/$', 'web_shop.views.market'),
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': MEDIA_ROOT, 'show_indexes':True}),
)