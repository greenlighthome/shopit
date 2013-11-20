from django.conf.urls import patterns, include, url
from django.contrib import admin
from shopit.settings import MEDIA_ROOT

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^admin/', admin.site.urls),
    url(r'^accounts/', include('accounts.urls')),

    url(r'^$', 'web_shop.views.welcome'),
    url(r'^add_product$', 'web_shop.views.add_product'),
    url(r'^market/$', 'web_shop.views.market'),
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': MEDIA_ROOT, 'show_indexes':True}),
)