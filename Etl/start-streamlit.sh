#!/bin/bash
set -e

# app résultats des nuits
streamlit run /app/Etl/base-analytique-et-apps/app_resultats_nuit_avec_ia.py \
  --server.port 8501 --server.address 0.0.0.0 --server.headless true &

# Dashboard CPAP
cd /app/Etl/base-analytique-et-apps/Dashboard_CPAP
streamlit run dashboard_main.py \
  --server.port 8502 --server.address 0.0.0.0 --server.headless true &

# Si une des apps meurt, le container s'arrete et restart
wait -n
