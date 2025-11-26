FROM python:3.10-slim          
WORKDIR /app                   
COPY requirements.txt .        
# Image de base Python 
# Dossier de travail 
# Copie des dépendances 
RUN pip install -r requirements.txt  # Installation 
COPY . .                      
# Copie du code 
RUN python manage.py collectstatic --noinput  # Fichiers static 
EXPOSE 8000                   
# Port d'exposition 
CMD ["gunicorn", "djangoproject_git.wsgi:application", "--bind", "0.0.0.0:8000"]  # Démarrage 