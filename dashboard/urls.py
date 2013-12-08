from django.conf.urls import url, patterns
from django.contrib.auth.decorators import login_required
from dashboard import views
from web_shop.models import Product

urlpatterns = patterns('',
    url(r'^$', login_required(views.DashboardView.as_view()), name='dashboard'),
    url(r'^actions/([\w-]+)/$', login_required(views.UserActions.as_view( model=Product, paginate_by=3 )), name='actions'),
    url(r'^product/update/(?P<pk>\d+)/', login_required(views.ProductUpdate.as_view()), name='product-update'),
    url(r'^product/delete/(?P<pk>\d+)/', login_required(views.ProductDelete.as_view()), name='product-delete'),
    url(r'^details/(?P<slug>[\w|\W]+)-(?P<pk>\d+)/$', login_required(views.DashboardDetailView.as_view()), name='dashboard-detail-view'),
    url(r'^account/$', login_required(views.UserAccount.as_view()), name='account'),
    url(r'^account/update/(?P<slug>[\w|\W]+)/(?P<pk>\d+)/', login_required(views.UpdateUserAccountView.as_view()), name='account-update'),
)