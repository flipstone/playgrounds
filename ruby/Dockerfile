# flipstone/playground-base
FROM 46fc21600df9

# install packages we will need
RUN apt-get update && \
    apt-get install -y \
    build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev wget

ADD ruby-2.1.2.tar.gz /home/vagrant
RUN chown -R vagrant.vagrant /home/vagrant/ruby-2.1.2

USER vagrant
RUN cd /home/vagrant/ruby-2.1.2 && \
    ./configure --prefix=/home/vagrant/ && \
    echo 'export PATH=$PATH:/home/vagrant/bin/' >> /home/vagrant/.bashrc && \
    ls /home/vagrant/ && \
    pwd && \
    make && \
    make install

USER root

