"""
WSGI config for shopit project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.6/howto/deployment/wsgi/
"""

import os
import sys

path = os.path.dirname(os.path.dirname(__file__))
if path not in sys.path:
    os.path.abspath(path)

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "shopit.settings")

from django.core.handlers.wsgi import WSGIHandler
application = WSGIHandler()
