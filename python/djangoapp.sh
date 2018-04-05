#!/bin/bash
echo
echo -e " \033[1m\033[32mEnter Project App Name"
read app_name
touch $app_name
python manage.py startapp $app_name
cd $app_name && mkdir api && cd api && touch serializer.py urls.py views.py

