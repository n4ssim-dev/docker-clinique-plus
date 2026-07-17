FROM python:3.12-slim

WORKDIR /app

# Contexte de build = racine du projet (voir compose.yml), pour pouvoir
# embarquer base_analytique.db et models/ qui sont hors du dossier Etl/

# Les dépendances d'abord, pour profiter du cache de build
COPY Etl/requirements.txt Etl/requirements.txt
RUN pip install --no-cache-dir -r Etl/requirements.txt

COPY Etl/base-analytique-et-apps Etl/base-analytique-et-apps
COPY base_analytique.db base_analytique.db
COPY models models
COPY Etl/start-streamlit.sh /usr/local/bin/start-streamlit.sh
RUN chmod +x /usr/local/bin/start-streamlit.sh

EXPOSE 8501 8502

CMD ["start-streamlit.sh"]
