from django.conf.urls import url, patterns


urlpatterns = patterns('',
        url(r'^$', 'engine.views.search_product'),
)