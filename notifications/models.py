from django.db import models
from members.models import MyUser
from django.db.models.signals import post_save
from django.dispatch import receiver


class Notifications(models.Model):
    title = models.CharField(max_length=256)
    message = models.TextField()
    viewed = models.BooleanField(default=False)
    user = models.ForeignKey(MyUser)

@receiver(post_save, sender=MyUser)
def create_welcome_message(sender, **kwargs):
    if kwargs.get('created', False):
        Notifications.objects.create(user=kwargs.get('instance'),
                                        title="Welcome to Shopit",
                                        message="Thanks for signing up, by becoming a member of Shopit you have full access our online market. welcome aboard" )