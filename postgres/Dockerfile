FROM alpine:latest

ENV POSTGRES_DB db 
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres

# Installez PostgreSQL et ses dépendances
RUN apk add --no-cache postgresql postgresql-contrib postgresql15-jit

# Exposez le port PostgreSQL (par défaut : 5432)
EXPOSE 5432

# Démarrez PostgreSQL automatiquement lorsque le conteneur démarre
CMD ["postgres"]