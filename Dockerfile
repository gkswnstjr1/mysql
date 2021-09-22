#from docker.io/library/mysql:latest
from docker.io/mysql:5.7

USER root
RUN mkdir /home/mysql

# ROOT PASSWORD
ENV MYSQL_ROOT_PASSWORD=Sellers123!@#

#ENV MYSQL_DATABASE=sellers_test
ENV MYSQL_USER=sellers
ENV MYSQL_PASS=Sellers123!@#

#USER mysql:mysql

COPY Dump20200324.sql.gz /  
COPY my.cnf /etc/mysql/  


