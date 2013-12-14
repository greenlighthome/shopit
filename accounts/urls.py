from django.conf.urls import patterns, url

handler404 = 'views.handle404'

urlpatterns = patterns('',
    url(r'^login/$', 'django.contrib.auth.views.login'),

    url(r'^logout/$', 'django.contrib.auth.views.logout'),

    url(r'^signup/$', 'accounts.views.signup',
                        {'template_name': 'registration/signup_form.html', 'email_template_name': 'registration/signup_email.html'}),

    url(r'^signup/done/$', 'accounts.views.signup_done',
                        {'template_name': 'registration/signup_done.html'}),

    url(r'^signup/(?P<uidb36>[0-9A-Za-z]+)-(?P<token>.+)/$', 'accounts.views.signup_confirm'),

    url(r'^signup/complete/$', 'accounts.views.signup_complete',
                        {'template_name': 'registration/signup_complete.html'}),
)