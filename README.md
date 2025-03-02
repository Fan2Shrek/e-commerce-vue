# E-Commerce Microservices

1. [Installation](#installation)
2. [Configuration environnements](#configuration-environnements)
3. [Tests](#éxécution-des-tests)

## Installation

1. Cloner le projet avec :

```bash
git clone git@github.com:Fan2Shrek/e-commerce-vue.git
```

2. Se placer dans le dossier du projet :

```bash
cd e-commerce-vue
```

3. Lancer le projet avec :

```bash
make up
```

4. Le projet est accessible à l'adresse suivante : [http://localhost:8000](http://localhost:8000)

## Configuration environnements

### Variables d'environnements

Les variables d'environnements sont stockées dans le fichier [`.env`](.env) à la racine du projet.

### Configuration des services

Les services sont configurés dans les fichiers `docker-compose.yml` pour l'environnement de dev et `docker-compose.prod.yml` pour l'environnement de prod.

La structure des fichiers Docker est la suivante :

```
.
├── docker-compose.prod.yml
├── docker-compose.yml
├── frontend
│   ├── Dockerfile
└── services
    ├── auth-service
    │   ├── Dockerfile
    ├── order-service
    │   ├── Dockerfile
    └── product-service
        ├── Dockerfile
```

## Éxécution des tests

Les tests sont exécutés avec la commande suivante :

```bash
make tests
```
