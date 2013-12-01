from django.conf.urls import url, patterns
from shopit.settings import MEDIA_ROOT
from web_shop import views

urlpatterns = patterns('',
    url(r'^$', views.WelcomeView.as_view(), name='Welcome   '),

    url(r'^market/$', views.CategoryListView.as_view(), name='category-list'),

    url(r'^market/(?P<slug>[\w|\W]+)-(?P<pk>\d+)/$', views.ProductDetailView.as_view(), name='detail-view'),

    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': MEDIA_ROOT, 'show_indexes':True}),

    url(r'^category/([\w|\W]+)/$', views.ProductByCategoryList.as_view(paginate_by=5)),
)