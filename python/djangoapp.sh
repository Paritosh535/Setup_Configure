#!/bin/bash
echo -e "\033[1m\033[36m Enter Project Name First"
read project_name
cd $project_name
cd Dev/$project_name/src

echo -e " \033[1m\033[32mEnter Project App Name"
read app_name
python manage.py startapp $app_name 

# touch $app_name
echo -e " \033[1m\033[32mCreating Apps"
# python manage.py startapp $app_name

echo -e " \033[1m\033[32mCreating API Dir"
cd $app_name && mkdir api && cd api && touch serializer.py urls.py views.py


