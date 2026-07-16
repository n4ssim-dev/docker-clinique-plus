ARG MYSQL_VERSION=8.4

FROM mysql:${MYSQL_VERSION}

# Dump de la db (structure + données) exécuté automatiquement au premier démarrage, uniquement si le volume de données est vide
COPY initdb/ /docker-entrypoint-initdb.d/

# Mappe les variables DB_* du .env vers les variables MYSQL_* attendues par l'image officielle.
# "$@" transmet la commande (CMD ou arguments de docker run)

ENTRYPOINT ["/bin/bash", "-c", "export MYSQL_ROOT_PASSWORD=\"$DB_PASSWORD\" MYSQL_DATABASE=\"$DB_NAME\"; exec docker-entrypoint.sh \"$@\"", "--"]
CMD ["mysqld"]

EXPOSE 3306
