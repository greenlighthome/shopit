import re
from django.core import validators
from django.db import models
from django.utils import timezone
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser
from django.utils.timezone import now
from django.utils.translation import ugettext_lazy as _


class MyUserManager(BaseUserManager):
    def create_user(self, username, date_of_birth, password=None):
        """Creates and saves a User with the given username, date of birth and password."""
        if not username:
            raise ValueError('Users must have an email address')
        user = self.model(username=username, date_of_birth=date_of_birth, date_joined=now,)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username, date_of_birth, password):
        """Creates and saves a superuser with the given username, date of birth and password."""
        user = self.create_user(username, password=password, date_of_birth=date_of_birth)
        user.is_superuser = True
        user.save(using=self._db)
        return user


class MyUser(AbstractBaseUser):
    email = models.EmailField(verbose_name='email address', max_length=255, unique=True, db_index=True, )
    date_of_birth = models.DateField()
    is_active = models.BooleanField(default=True)
    is_superuser = models.BooleanField(default=False)
    username = models.CharField(('username'), max_length=30, unique=True,
                                help_text=('Required. 30 characters or fewer. Letters, numbers and '
                                           '@/./+/-/_ characters'),
                                validators=[
                                    validators.RegexValidator(re.compile('^[\w.@+-]+$'), ('Enter a valid username.'),
                                                              'invalid')
                                ])
    date_joined = models.DateTimeField(_('date joined'), default=timezone.now)
    first_name = models.CharField(('first name'), max_length=30, blank=True)
    last_name = models.CharField(('last name'), max_length=30, blank=True)
    street = models.TextField(max_length=100, null=True)
    number = models.IntegerField(null=True, max_length=3)
    door = models.IntegerField(null=True, max_length=3)
    district = models.CharField(max_length=50, null=True)
    postal_code = models.IntegerField(null=True, max_length=4)
    province = models.CharField(max_length=50, null=True)
    country = models.CharField(max_length=50, null=True)
    phone_number = models.IntegerField(null=True, max_length=13)

    objects = MyUserManager()

    USERNAME_FIELD = 'username'

    REQUIRED_FIELDS = ['date_of_birth']

    def get_full_name(self):
        # The user is identified by their email address
        return self.username

    def get_short_name(self):
        pass

    # The user is identified by their email address return self.email
    # On Python 3: def __str__(self):

    def __unicode__(self):
        return self.username

    def has_perm(self, perm, obj=None):
        "Does the user have a specific permission?" # Simplest possible answer: Yes, always return True
        return True

    def has_module_perms(self, app_label):
        "Does the user have permissions to view the app `app_label`?" # Simplest possible answer: Yes, always
        return True

    @property
    def is_staff(self):
        "Is the user a member of staff?"
        # Simplest possible answer: All admins are staff
        return self.is_superuser