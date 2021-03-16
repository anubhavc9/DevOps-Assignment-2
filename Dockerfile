FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD pucsd
ENV MYSQL_DATABASE pucsdSudents
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
ADD test.sql /docker-entrypoint-initdb.d
EXPOSE 3306
