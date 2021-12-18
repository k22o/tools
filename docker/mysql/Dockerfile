FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=password

COPY ./my.cnf /etc/mysql/conf.d/my.cnf
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql