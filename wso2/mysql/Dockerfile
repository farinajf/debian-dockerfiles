FROM mysql
MAINTAINER Fran Fariña <farinajf@gmail.com>

ENV MYSQL_ROOT_PASSWORD 000000

RUN mkdir -p /dbscripts

ADD dbscripts/mysql.sql /dbscripts
ADD init.sql /docker-entrypoint-initdb.d/

COPY myconfig.cnf /etc/mysql/conf.d

