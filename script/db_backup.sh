#!/bin/bash

/usr/bin/mysqldump --default-character-set=utf8 -u kakeibo --password=ha-dogei kakeibo_production > /home/kaz/src/kakeibo/db/kakeibo_db.sql

cd /home/kaz/src/kakeibo/db; /usr/bin/svn ci kakeibo_db.sql -m 'daily db backup' 

