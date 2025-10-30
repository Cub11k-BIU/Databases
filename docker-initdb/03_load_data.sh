#!/usr/bin/env bash
mysql --local-infile=1 -uroot -p"$MYSQL_ROOT_PASSWORD" < /docker-entrypoint-initdb.d/03_load_data.sql.norun
