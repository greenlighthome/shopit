from django.conf.urls import url, patterns
from django.contrib.auth.decorators import login_required
from dashboard import views
from web_shop.models import Product

urlpatterns = patterns('',
    url(r'^$', login_required(views.DashboardView.as_view()), name='dashboard'),
    url(r'^actions/([\w-]+)/$', login_required(views.UserActions.as_view( model=Product, paginate_by=3 )), name='actions'),
    url(r'update/(?P<pk>\d+)/', login_required(views.ProductUpdate.as_view()), name='update'),
    url(r'delete/(?P<pk>\d+)/', views.ProductDelete.as_view(), name='delete'),
    url(r'^details/(?P<slug>[\w|\W]+)-(?P<pk>\d+)/$', login_required(views.DashboardDetailView.as_view()), name='dashboard-detail-view'),

)