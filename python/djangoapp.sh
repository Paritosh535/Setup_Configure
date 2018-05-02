#!/bin/bash

read -p $"\033[1m\033[36m Enter Project Name First " project_name
cd $project_name/Dev

source env/bin/activate && cd $project_name/src

read -e -p " \033[1m\033[32mEnter App Name " app_name
python manage.py startapp $app_name 

echo "Add url in Host"
sed -i 's/#Apps/#Apps\n    url(r'\'^api'\/'\'',include('\'$app_name.api.urls\''))/g' $project_name/urls.py

echo -e " \033[1m\033[32mCreating API Dir"
cd $app_name && mkdir api && cd api && touch serializers.py urls.py views.py

read -p "Enter Your model Name CapitalEachWord " model_name

echo '
"""
Author : Paritosh Yadav
Created Date : '$(date)'
Description : $model_name Schema desgin.
"""

from django.db import models


class Questionnaire(models.Model):
    pass

'>models.py
echo '
"""
Author : Paritosh Yadav
Created Date : date
Description : Routing setting of Questionnaire


Abbreviation : RC -->(R)Read(Get)
                    Create(Post)
               RUD --> (R)Read By ID(Get)
                       (U) Update (PUT)
                       (D) Delete (Delete)

"""

from django.conf.urls import url
from .views import $model_name'RC',

urlpatterns = [

    url(r'^$model_name/$', $model_name+'RC'.as_view()),
    url(r'^$model_name/(?P<pk>\d+)/$', model_name+'RUD'.as_view()),
]'




