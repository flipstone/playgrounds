# flipstone/playground-base
FROM 46fc21600df9

RUN apt-get update && \
    apt-get install -y \
      postgresql-9.3 postgresql-contrib-9.3 postgresql-server-dev-9.3 postgresql-client-9.3

# create postgres setup for scrango-serv
USER root
RUN /etc/init.d/postgresql start && \
    sudo -u postgres createuser --superuser vagrant && \
    sudo -u postgres createdb vagrant && \
    sudo -u vagrant touch /home/vagrant/.psql_history && \
    echo "listen_addresses = '*'" >> /etc/postgresql/9.3/main/postgresql.conf && \
    echo "local all all peer" > /etc/postgresql/9.3/main/pg_hba.conf && \
    echo "host all all all md5" >> /etc/postgresql/9.3/main/pg_hba.conf && \
    echo "host all all all md5" >> /etc/postgresql/9.3/main/pg_hba.conf && \
    echo '#! /bin/sh' >> /etc/my_init.d/01_start_postgresql.sh && \
    echo '/etc/init.d/postgresql start' >> /etc/my_init.d/01_start_postgresql.sh && \
    chmod 755 /etc/my_init.d/01_start_postgresql.sh

