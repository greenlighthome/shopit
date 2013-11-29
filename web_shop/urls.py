from django.conf.urls import url, patterns
from shopit.settings import MEDIA_ROOT
from web_shop import views

urlpatterns = patterns('',
    url(r'^$', views.WelcomeView.as_view(), name='Welcome   '),

    url(r'^market/$', views.CategoryListView.as_view(), name='category-list'),

    url(r'^market/(?P<slug>[\w|\W]+)-(?P<pk>\d+)/$', views.ProductView.as_view(), name='detail-view'),

    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': MEDIA_ROOT, 'show_indexes':True}),

    url(r'^category/([\w-]+)/$', views.CategoriesList.as_view()),

    url(r'^category/([\w-]+)/([\w-]+)$', views.ProductsList.as_view(paginate_by=2), name='product-list'),
)