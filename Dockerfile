FROM mariadb:latest

LABEL version="1.0"
LABEL maintainer="forbiddencoding"

RUN apt-get update && apt-get install -y mariadb-plugin-rocksdb && \
    apt-get install -y liblz4-dev && \
    apt-get install -y bash

COPY ./conf.d/custom.cnf /etc/mysql/conf.d/custom.cnf

RUN bash -c "chmod 0444 -R /etc/mysql/conf.d/custom.cnf"
