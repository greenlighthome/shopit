from django.conf.urls import url, patterns
from django.contrib.auth.decorators import login_required
from dashboard import views

urlpatterns = patterns('',
    url(r'^$', login_required(views.DashboardView.as_view()), name='dashboard'),
    url(r'^actions/([\w-]+)$', views.ListProductsFromUser.as_view(), name='actions'),
    url(r'update/(?P<pk>\d+)/', views.ProductUpdate.as_view(), name='update'),
)