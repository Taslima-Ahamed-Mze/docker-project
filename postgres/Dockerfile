FROM alpine:latest

RUN apk update && apk add postgresql
RUN mkdir -p /run/postgresql && \
    chown -R postgres:postgres /run/postgresql && \
    chmod 2777 /run/postgresql

RUN mkdir -p /usr/local/pgsql/data && \
    chown -R postgres:postgres /usr/local/pgsql/data && \
    chmod 700 /usr/local/pgsql/data && \
    su -c "initdb -D /usr/local/pgsql/data" postgres

ENV PGDATA=/usr/local/pgsql/data
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase

EXPOSE 5432

CMD ["postgres", "-D", "/usr/local/pgsql/data"] 