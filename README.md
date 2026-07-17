# Clinique Plus - Application Opérateur/Médecin

[![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)](https://www.javascript.com/)
[![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white)](https://www.typescriptlang.org/)
[![Angular](https://img.shields.io/badge/Angular-E23237?style=for-the-badge&logo=angular&logoColor=white)](https://angular.io/)
[![Express](https://img.shields.io/badge/Express-000000?style=for-the-badge&logo=express&logoColor=white)](https://expressjs.com/)
[![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)](https://nodejs.org/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![AI](https://img.shields.io/badge/AI-412991?style=for-the-badge&logo=openai&logoColor=white)](https://openai.com/)
[![SCSS](https://img.shields.io/badge/SCSS-CC6699?style=for-the-badge&logo=sass&logoColor=white)](https://sass-lang.com/)
[![Trello](https://img.shields.io/badge/Trello-0052CC?style=for-the-badge&logo=trello&logoColor=white)](https://trello.com/)

Ce projet consiste en un prototype de DPI complet intégrant des briques IA pour assurer la supervision des nuits d'études au sein de la clinique du sommeil d'Arles (fictif) : détection/validation des événements respiratoires d'une nuit et prédiction des comorbidités probables d'un patient (`Etl/base-analytique-et-apps/ia_comorbidites.py`, un RandomForest par comorbidité).

## Utilisation

| N° étape | Description | Illustration |
| --- | --- | --- |
| 1 | L'utilisateur est initialement rendu sur une page de connexion lui demandant d'indiquer ses identifiants de connexions | | 
| 2 | Un tableau de bord d'accueil est affiché à l'utilisateur mentionnant quelques informations général sur la clinique et son profil | |
| 3 | L'utilisateur peut se rendre aux pages accessible pour son rôle | |

## UML / Diagramme d'utilisation

<a href="schemas_et_diagramme/diagram_projet.drawio.png"><img src="schemas_et_diagramme/diagram_projet.drawio.png" alt="Diagramme d'utilisation" width="600"></a>

## Diagramme base de données :

| Nom | Illustration |
| --- | --- |
| Base MySQL | <a href="schemas_et_diagramme/mld_mysql/schema_bdd_leger.jpg"><img src="schemas_et_diagramme/mld_mysql/schema_bdd_leger.jpg" alt="Schéma base MySQL" width="400"></a> |
| Datalake | <a href="schemas_et_diagramme/mld_datalake/schema_bdd_datalake.jpg"><img src="schemas_et_diagramme/mld_datalake/schema_bdd_datalake.jpg" alt="Schéma datalake" width="400"></a> |
| Base analytique | <a href="schemas_et_diagramme/mld_base_analytique/schema_bdd_analytique.jpg"><img src="schemas_et_diagramme/mld_base_analytique/schema_bdd_analytique.jpg" alt="Schéma base analytique" width="400"></a> |

# Installation

## 1. Lancer le projet

#### Avec Docker (recommandé)

Le fichier [docker-compose.yaml](docker-compose.yaml) à la racine orchestre quatre conteneurs (via les `compose.yaml` de chaque dossier) :

| Service | Dossier | Port hôte | Description |
| --- | --- | --- | --- |
| `db` | [mysql-docker/](mysql-docker/) | `3307` → 3306 | MySQL 8.4, initialisé automatiquement au premier lancement avec le dump [mysql-docker/initdb/01-clinique.sql](mysql-docker/initdb/01-clinique.sql) (schéma + données + procédures stockées `sp_compteur_*`) |
| `api` | [Api/](Api/) | `9000` → 3000 | Api Express (nodemon), attend que la db soit *healthy* avant de démarrer |
| `server` | [Front/](Front/) | `8080` → 8080 | Front Angular buildé et servi par Nginx, qui relaie aussi `/api` et `/auth` vers le conteneur `api` |
| `streamlit` | [Etl/](Etl/) | `8501`, `8502` | Les deux apps Streamlit : résultats de nuit + IA comorbidités (8501) et dashboard CPAP (8502) |

Dans le réseau Compose, les conteneurs se parlent par **nom de service et port interne**, injectés via les blocs `environment:` des compose : la db est jointe en `DB_HOST=db` / `DB_PORT=3306` (par `api` et `streamlit`), l'api en `http://api:3000` (par `streamlit` via `API_BASE_URL`, et par le Nginx du front via `API_UPSTREAM`). Les URLs `localhost:<port hôte>` ne servent que depuis l'hôte (navigateur, debug).

Prérequis : un `.env` **à la racine** (cf. [.env.example](.env.example)), chargé par les conteneurs. Attention : le dump Docker crée une base nommée **`clinique`** (et non `cliniquearles`), donc `DB_NAME=clinique` dans ce `.env`. `DB_HOST`/`DB_PORT` y sont ignorés dans Compose (surchargés par les noms de services, cf. ci-dessus) : ils ne servent qu'aux scripts lancés en local hors Docker. `PORT` et `CORS_ORIGINS` sont optionnels (défauts : `3000` et les origines du front en dev/Docker).

```bash
docker compose up --build
```

Commandes utiles au quotidien :

```bash
# Démarrer la stack en arrière-plan (sans bloquer le terminal)
docker compose up -d

# Vérifier les conteneurs en cours d'exécution (état, ports publiés)
docker ps

# Arrêter et supprimer les conteneurs (les données MySQL sont conservées dans le volume)
docker compose down
```

- Front : http://localhost:8080 (les appels `/api` et `/auth` du navigateur sont relayés par Nginx vers le conteneur `api`)
- Api : http://localhost:9000
- Streamlit résultats de nuit + IA : http://localhost:8501
- Streamlit dashboard CPAP : http://localhost:8502
- MySQL depuis l'hôte (debug) : `mysql -h 127.0.0.1 -P 3307 -u root -p clinique`

Le dump `initdb/` n'est rejoué que si le volume de données `db_data` est vide ; pour repartir d'une base neuve : `docker compose down -v` puis relancer. Aucune initialisation manuelle de MySQL n'est nécessaire avec Docker.