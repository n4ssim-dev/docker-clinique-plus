# -------------------------------------------
# Client MySQL connecté à la db du projet
# (identifiants lus depuis le .env à la racine)
# -------------------------------------------

ARG MYSQL_VERSION=8.4

# Image officielle MySQL, utilisée ici uniquement comme client
FROM mysql:${MYSQL_VERSION}

# --protocol=TCP force une connexion réseau (pas de socket local au conteneur)
# "$@" permet de passer des arguments supplémentaires au client mysql,
# ex : docker compose run --rm mysql-client -e "SHOW TABLES;"
ENTRYPOINT ["/bin/sh", "-c", "export MYSQL_PWD=\"$DB_PASSWORD\"; exec mysql --protocol=TCP -h \"$DB_HOST\" -P \"$DB_PORT\" -u \"$DB_USER\" \"$DB_NAME\" \"$@\"", "mysql"]
