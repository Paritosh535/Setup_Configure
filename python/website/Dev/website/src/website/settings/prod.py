
from .base import *
DEBUG = False
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'myproject',
        'USER': 'myuser',
        'PASSWORD': 'bestpasswordever',
    }
}
# $ ./manage.py runserver --settings=myproject.settings.dev
# $ ./manage.py runserver --settings=myproject.settings.prod


