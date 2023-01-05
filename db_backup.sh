#!/bin/sh

echo "Start db backup"
day="$(date +'%A')"
db_backup="mydb_${day}.sql"
sudo mysqldump  -u site -p --no-tablespaces dbname  >/home/${db_backup}
echo "db backup complete"
