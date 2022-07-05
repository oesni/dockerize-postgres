mkdir -p backups
echo "$SERVER_URL:$SERVER_PORT:*:$SERVER_USER:$SERVER_PSWD"
echo "$SERVER_URL:$SERVER_PORT:*:$SERVER_USER:$SERVER_PSWD" >> ~/.pgpass
chmod 600 ~/.pgpass

pg_dumpall --no-owner -h $SERVER_URL -U $SERVER_USER > ./backups/$BACKUP_SQL
cp ./backups/$BACKUP_SQL ./backups/latest.sql

# head -n -1 ~/.pgpass > tmp.txt && mv tmp.txt ~/.pgpass && chmod 600 ~/.pgpass
sed -i '' -e '$ d' ~/.pgpass