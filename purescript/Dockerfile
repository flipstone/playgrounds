# flipstone/playground-haskell
FROM 600a8b289a40

RUN apt-get install -y nodejs=0.10.25~dfsg2-2ubuntu1 \
                       npm=1.3.10~dfsg-1 \
                       phantomjs=1.9.0-1 \
                       libncurses5-dev=5.9+20140118-1ubuntu1 \
                       libncursesw5-dev=5.9+20140118-1ubuntu1 && \
    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10 && \
    npm install -g grunt@0.4.5 \
                   grunt-cli@0.1.13 \
                   grunt-init@0.3.2 \
                   bower@1.3.8

USER vagrant
RUN mkdir /home/vagrant/purescript && \
    HOME=/home/vagrant bash -i -c 'cd ~/purescript && cabal sandbox init' && \
    HOME=/home/vagrant bash -i -c 'cd ~/purescript && cabal install purescript' && \
    echo 'export PATH=$PATH:/home/vagrant/purescript/.cabal-sandbox/bin' >> /home/vagrant/.bashrc && \
    mkdir /home/vagrant/.grunt-init && \
    HOME=/home/vagrant bash -i -c 'git clone https://github.com/purescript-contrib/grunt-init-purescript.git ~/.grunt-init/purescript'

USER root

