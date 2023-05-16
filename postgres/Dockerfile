FROM alpine:3.14

RUN apk update && apk add postgresql

ENV PGDATA /var/lib/postgresql/data

RUN mkdir /run/postgresql && chown -R postgres:postgres /run/postgresql && \
    mkdir ${PGDATA} && chown -R postgres:postgres ${PGDATA}

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

USER postgres

RUN initdb -D ${PGDATA}

CMD ["postgres", "-D", "/var/lib/postgresql/data"]
