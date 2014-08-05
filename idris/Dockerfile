# flipstone/playground-haskell
FROM 600a8b289a40

RUN apt-get install -y libncurses5-dev=5.9+20140118-1ubuntu1 \
                       libncursesw5-dev=5.9+20140118-1ubuntu1
USER vagrant
RUN mkdir /home/vagrant/idris && \
    echo 'export PATH=$PATH:/home/vagrant/idris/.cabal-sandbox/bin' >> /home/vagrant/.bashrc && \
    HOME=/home/vagrant bash -i -c 'cabal update' && \
    HOME=/home/vagrant bash -i -c 'cd ~/idris && cabal sandbox init' && \
    HOME=/home/vagrant bash -i -c 'cd ~/idris && cabal install alex-3.1.3 idris-0.9.14.1'

USER root

