FROM mariadb:10.10

# install packeges
RUN apt-get update && \
    apt-get install -y \
    zip \
    unzip

COPY ../../_db_/apto-example-data.sql /docker-entrypoint-initdb.d/01-apto.sql
ARG APTO_DOCKER_DOMAIN
RUN printf "UPDATE apto_shop SET domain = '%s' WHERE domain = 'grobi.projektversion.de';" ${APTO_DOCKER_DOMAIN} >> /docker-entrypoint-initdb.d/02-apto.sql
