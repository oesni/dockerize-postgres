FROM postgres:14.2

COPY ./backups/latest.sql /sql/dump.sql
COPY ./scripts/restore.sh /docker-entrypoint-initdb.d/
# COPY ./backups/*.sql /docker-entrypoint-initdb.d/
