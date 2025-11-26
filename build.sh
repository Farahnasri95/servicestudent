#!/bin/bash 
pip install -r requirements.txt      
# Installer dépendances 
python manage.py collectstatic --noinput  # Collecter fichiers static 
python manage.py migrate             
# Appliquer migrations BDD 