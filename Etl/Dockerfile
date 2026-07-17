# Image unique qui lance les deux apps Streamlit :
#   - app_resultats_nuit_avec_ia.py  -> port 8501
#   - Dashboard_CPAP/dashboard_main.py -> port 8502
FROM python:3.12-slim

# /app joue le rôle de la racine du projet : les scripts remontent
# l'arborescence (Etl/base-analytique-et-apps -> racine) pour trouver
# base_analytique.db, models/ et Etl/outputs/ (fournis en volumes)
WORKDIR /app

# Les dépendances d'abord, pour profiter du cache de build
COPY requirements.txt Etl/requirements.txt
RUN pip install --no-cache-dir -r Etl/requirements.txt

COPY base-analytique-et-apps Etl/base-analytique-et-apps
COPY start-streamlit.sh /usr/local/bin/start-streamlit.sh
RUN chmod +x /usr/local/bin/start-streamlit.sh

EXPOSE 8501 8502

CMD ["start-streamlit.sh"]
