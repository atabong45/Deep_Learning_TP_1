# Utiliser une image Python légère
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du projet (app.py, modèle, etc.)
COPY . .

# Exposer le port sur lequel Flask écoutera
EXPOSE 5000

# Commande par défaut pour démarrer l'API Flask
CMD ["python", "app.py"]
