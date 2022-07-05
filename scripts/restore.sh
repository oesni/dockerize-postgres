echo "127.0.0.1:5432:*:${POSTGRES_USER}:${POSTGRES_PASSWORD}" > ~/.pgpass
chmod 600 ~/.pgpass
psql -f /sql/dump.sql