#!/bin/sh
set -e

if [ ! -e $PGDATA/bootstraped ]; then
    # Start PostgreSQL
    pg_ctl start -D $PGDATA -o '-c listen_addresses=*'

    # Create user and database
    psql -c "CREATE USER ${POSTGRES_USER} WITH PASSWORD '${POSTGRES_PASSWORD}' CREATEDB;"
    psql -c "CREATE DATABASE ${POSTGRES_DB} OWNER ${POSTGRES_USER};"


    pg_ctl stop -D $PGDATA

    touch $PGDATA/bootstraped 

fi

# Start PostgreSQL in foreground 
"$@"