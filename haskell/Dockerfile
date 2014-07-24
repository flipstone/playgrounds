# flipstone/playground-base
FROM 46fc21600df9

# install packages we will need
RUN apt-get update && \
    apt-get install -y \
      ghc=7.6.3-10 zlib1g zlib1g-dev

ADD cabal-install-1.20.0.2.tar.gz /home/vagrant
RUN chown -R vagrant.vagrant /home/vagrant/cabal-install-1.20.0.2
USER vagrant

RUN (cd /home/vagrant/cabal-install-1.20.0.2 && HOME=/home/vagrant NO_DOCUMENTATION=1 ./bootstrap.sh) &&\
    rm -rf /home/vagrant/cabal-install-1.20.0.2 && \
    HOME=/home/vagrant /home/vagrant/.cabal/bin/cabal update && \
    echo 'export LANG=en_US.utf8' >> /home/vagrant/.bashrc && \
    echo 'export PATH=/home/vagrant/.cabal/bin:$PATH' >> /home/vagrant/.bashrc && \
    echo 'export PATH=./.cabal-sandbox/bin:$PATH' >> /home/vagrant/.bashrc

USER root

