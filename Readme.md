# Reconnaissance de Chiffres Manuscrits (MNIST) avec TensorFlow

Ce projet est une introduction simple au deep learning qui met en œuvre un réseau de neurones pour classifier des images de chiffres manuscrits provenant du célèbre jeu de données MNIST. Le modèle est construit avec l'API Keras de TensorFlow.

## 📖 Description

Le script réalise les étapes suivantes :

1.  **Chargement des données** : Le jeu de données MNIST est chargé depuis `keras.datasets`. Il est divisé en un ensemble d'entraînement (60 000 images) et un ensemble de test (10 000 images).
2.  **Prétraitement** : Les valeurs des pixels des images (initialement de 0 à 255) sont normalisées pour être comprises entre 0 et 1. Les images 2D (28x28 pixels) sont ensuite aplaties en vecteurs 1D (784 pixels).
3.  **Construction du modèle** : Un réseau de neurones séquentiel simple est défini avec une couche cachée et une couche de sortie.
4.  **Entraînement** : Le modèle est entraîné sur les données d'entraînement pendant 5 époques.
5.  **Évaluation** : La performance du modèle est évaluée sur l'ensemble de test pour mesurer sa précision sur des données qu'il n'a jamais vues.
6.  **Sauvegarde** : Le modèle entraîné est sauvegardé dans un fichier `mnist_model.h5` pour une utilisation ultérieure.

## 🛠️ Technologies Utilisées

- Python 3
- TensorFlow / Keras
- NumPy

## 🚀 Installation et Lancement

Suivez ces étapes pour exécuter le projet sur votre machine locale.

**1. Cloner le dépôt**

```bash
git clone https://github.com/atabong45/Deep_Learning_TP_1.git
cd Deep_Learning_TP_1
```

**2. Créer un environnement virtuel**
Il est fortement recommandé d'utiliser un environnement virtuel pour isoler les dépendances du projet.

```bash
# Pour Linux / macOS
python3 -m venv venv
source venv/bin/activate

# Pour Windows
python -m venv venv
.\venv\Scripts\Activate
```

**3. Installer les bibliothèques nécessaires**
Installez toutes les bibliothèques requises avec pip.

```bash
pip install tensorflow numpy
```

**4. Exécuter le code**
Si votre code est dans un script Python (ex: train_model.py) :

```bash
   python train_model.py
```

Si votre code est dans un Jupyter Notebook (ex: notebook.ipynb), ouvrez-le avec VS Code ou Jupyter et exécutez les cellules séquentiellement.

Le script affichera la progression de l'entraînement époque par époque, puis la précision finale sur l'ensemble de test.

# 🧠 Architecture du Modèle

Le modèle est un réseau de neurones simple et entièrement connecté :

- **Couche d'entrée** : Aplatit les images de 28x28 en vecteurs de 784 pixels.
- **Couche cachée** : Une couche Dense avec 512 neurones et une fonction d'activation ReLU.
- **Couche de régularisation** : Une couche Dropout avec un taux de 0.2 pour prévenir le surapprentissage.
- **Couche de sortie** : Une couche Dense avec 10 neurones (un pour chaque chiffre de 0 à 9) et une fonction d'activation Softmax pour obtenir une distribution de probabilité.

# 📊 Résultats Attendus

Après l'entraînement, le script affichera une précision sur l'ensemble de test. Vous devriez obtenir un score d'environ **97-98%** , ce qui est une performance typique pour ce type de modèle sur le jeu de données MNIST.
Un fichier nommé mnist_model.h5 sera également créé à la racine du projet, contenant l'architecture et les poids du modèle entraîné.
