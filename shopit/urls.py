from django.conf.urls import patterns, include, url
from django.contrib import admin
from shopit.settings import MEDIA_ROOT


admin.autodiscover()

from web_shop import views

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'shopit.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', views.index),
    url(r'^add$', views.add),
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': MEDIA_ROOT, 'show_indexes':True}),



)