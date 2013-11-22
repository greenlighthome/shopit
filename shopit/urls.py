from django.conf.urls import patterns, include, url
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^admin/', admin.site.urls),
    url(r'^', include('web_shop.urls')),
    url(r'^accounts/', include('accounts.urls')),
)