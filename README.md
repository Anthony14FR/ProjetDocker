# ProjetDocker

### Introduction
- **Projet :** Création d'une architecture Docker comprenant deux services Nginx, deux services PHP, et une base de données MySQL.
- **Objectif :** Exécuter deux instances du même site web avec une base de données partagée, automatiser l'initialisation de Laravel, et personnaliser chaque serveur Nginx.

### Architecture du Projet
1. **Services Nginx :** Deux instances de Nginx, chacune servant une version distincte du site (Serveur 1 et Serveur 2).
2. **Services PHP :** Deux conteneurs PHP personnalisés construits à l'aide de Dockerfiles.
3. **Base de Données MySQL :** Un service unique pour la gestion de la base de données.

### Instructions de Configuration
- **Création des Dockerfiles :** Instructions détaillées pour la création de Dockerfiles pour les services PHP.
- **Configuration de Nginx :** Guide pour configurer les deux serveurs Nginx, y compris la personnalisation des pages d'accueil.
- **Base de Données MySQL :** Configuration du service MySQL et intégration avec Laravel.

### Docker-Compose
- **Définition des Services :** Explication de la structure du fichier `docker-compose.yml` avec des exemples.
- **Réseau et Volumes :** Configuration des réseaux et des volumes pour la persistance des données et la communication entre les conteneurs.

### Automatisation Laravel
- **Script d'Initialisation :** Création d'un script pour automatiser les commandes `composer install`, `npm run build`, `php artisan key:generate`, et `php artisan migrate:fresh --seed`.
- **Intégration dans Dockerfile :** Instructions pour intégrer le script d'initialisation dans le Dockerfile PHP.

### Personnalisation et Ajouts
- **Modifications du Code :** Guide pour modifier le code des serveurs Nginx pour afficher "Serveur 1" et "Serveur 2".
- **Ajouts Supplémentaires :** Suggestions pour des ajouts tels que Traefik, MinIO, Mailship, Node.js et leur intégration logique dans l'architecture.

### Tests et Validation
- **Procédure de Test :** Étapes pour tester le bon fonctionnement des deux sites, l'inscription et la connexion des utilisateurs.
- **Validation des Données :** Vérification de la création des utilisateurs dans la base de données.

### Documentation et Rendu
- **README.md :** Instructions sur comment documenter le projet dans un fichier README pour GitHub.
- **Vidéo Explicative :** Conseils pour créer une vidéo de présentation du projet, avec une touche d'humour et de troll appréciée.

### Critères de Notation
- **Complexité et Ajouts Personnels :** 5 points.
- **Compréhension Dockerfile :** 5 points.
- **Compréhension Docker-compose :** 5 points.
- **Automatisation et Logique du Système :** 5 points.

### Conclusion
- **Récapitulatif du Projet :** Un résumé des points clés et des objectifs atteints.
- **Feedback et Améliorations :** Encourager les retours et suggestions pour améliorer le projet.