from django.contrib.sites.models import Site
from django.contrib.auth.tokens import default_token_generator
from django.forms import TextInput, PasswordInput, EmailInput, DateInput, Select
from django.utils.http import int_to_base36
from django.template import Context, loader
from django import forms
from django.core.mail import send_mail
from members.models import MyUser, YEAR, MONTH, DAY


class UserCreationForm(forms.ModelForm):

    password1 = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': ' Password', 'required': True}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': ' Verify password', 'required': True}),
                                help_text="Enter the same password as above, for verification.")
    email1 = forms.EmailField(max_length=75, widget=forms.EmailInput(attrs={'placeholder': ' Email', 'required': True}))
    email2 = forms.EmailField(max_length=75, widget=forms.EmailInput(attrs={'placeholder': ' Verify email', 'required': True}),
                              help_text='Enter your email address again. A confirmation email will be sent to this address.')

    class Meta:
        model = MyUser
        fields = ('first_name', 'last_name', 'username', 'day_of_birth', 'month_of_birth', 'year_of_birth')
        widgets = {
            'first_name': TextInput(attrs={'required': True, 'placeholder': ' First_name', 'autofocus': True}),
            'last_name': TextInput(attrs={'required': True, 'placeholder': ' Last_name'}),
            'username': TextInput(attrs={'required': True, 'placeholder': ' Username'}),
            'day_of_birth': Select(attrs={'required': True}, choices=DAY),
            'month_of_birth': Select(attrs={'required': True}, choices=MONTH),
            'year_of_birth': Select(attrs={'required': True}, choices=YEAR),
        }

    def clean_password2(self):
        password1 = self.cleaned_data.get('password1', '')
        password2 = self.cleaned_data['password2']
        if password1 != password2:
            raise forms.ValidationError("The two password fields didn't match.")
        return password2

    def clean_email1(self):
        email1 = self.cleaned_data['email1']
        users_found = MyUser.objects.filter(email__iexact=email1)
        if len(users_found) >= 1:
            raise forms.ValidationError('A user with that email already exist.')
        return email1

    def clean_email2(self):
        email1 = self.cleaned_data.get('email1', '')
        email2 = self.cleaned_data["email2"]
        if email1 != email2:
            raise forms.ValidationError("The two email fields didn't match.")
        return email2

    def save(self, commit=True, domain_override=None,
             email_template_name='registration/signup_email.html',
             use_https=False, token_generator=default_token_generator):
        user = super(UserCreationForm, self).save(commit=False)
        user.set_password(self.cleaned_data['password1'])
        user.email = self.cleaned_data['email1']
        user.is_active = False
        if commit:
            user.save()
        if not domain_override:
            current_site = Site.objects.get_current()
            site_name = current_site.name
            domain = current_site.domain
        else:
            site_name = domain = domain_override

        t = loader.get_template(email_template_name)
        c = {
            'email': user.email,
            'domain': domain,
            'site_name': site_name,
            'uid': int_to_base36(user.id),
            'user': user,
            'token': token_generator.make_token(user),
            'protocol': use_https and 'https' or 'http',
            }
        send_mail("Confirmation link sent on %s" % site_name,
                  t.render(Context(c)), 'peyman.gohari@gmail.com', [user.email])
        return user