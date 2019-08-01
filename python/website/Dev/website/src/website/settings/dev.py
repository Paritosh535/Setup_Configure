
from .base import *
DEBUG = True
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': 'db.Dev_db',
        'USER': '',
    }
}

# $ ./manage.py runserver --settings=myproject.settings.dev
# $ ./manage.py runserver --settings=myproject.settings.prod

