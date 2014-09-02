# flipstone/playground-base
FROM 46fc21600df9

RUN apt-get update && \
    apt-get install -y \
      mysql-server

# create postgres setup for scrango-serv
USER root
RUN /etc/init.d/mysql start && \
    echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';" | mysql -uroot && \
    echo "GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'%';" | mysql -uroot && \
    echo '#! /bin/sh' >> /etc/my_init.d/01_start_mysql.sh && \
    echo ' /usr/bin/mysqld_safe --bind-address=0.0.0.0 &' >> /etc/my_init.d/01_start_mysql.sh && \
    chmod 755 /etc/my_init.d/01_start_mysql.sh

