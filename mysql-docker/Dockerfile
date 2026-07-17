ARG MYSQL_VERSION=8.4

FROM mysql:${MYSQL_VERSION}

# Dump de la db (structure + données) exécuté si le volume de données est vide
COPY initdb/ /docker-entrypoint-initdb.d/

ENTRYPOINT ["/bin/bash", "-c", "export MYSQL_ROOT_PASSWORD=\"$DB_PASSWORD\" MYSQL_DATABASE=\"$DB_NAME\"; exec docker-entrypoint.sh \"$@\"", "--"]
CMD ["mysqld"]

EXPOSE 3306
