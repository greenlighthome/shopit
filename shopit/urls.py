from django.conf.urls import patterns, include, url
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^admin/', admin.site.urls),
    url(r'^', include('web_shop.urls')),
    url(r'^accounts/', include('accounts.urls')),
    url(r'^dashboard/', include('dashboard.urls')),
    url(r'^notifications/', include('notifications.urls')),

)

handler404 = 'shopit.views.handler404'