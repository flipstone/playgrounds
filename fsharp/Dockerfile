# flipstone/playground-base
FROM 46fc21600df9

# install packages we will need
RUN apt-get update && \
    apt-get install -y \
      mono-devel=3.2.8+dfsg-4ubuntu1 \
      autoconf libtool pkg-config automake

# build fsharp
RUN git clone http://github.com/fsharp/fsharp && \
    cd fsharp && \
    git checkout 3.1.1.25 && \
    ./autogen.sh --prefix /usr && \
    make && \
    make install && \
    cd .. && \
    rm -rf fsharp

ADD bin /usr/bin

# nuget authorization
RUN mozroots --import --machine --sync && \
    (yes | certmgr -ssl -m https://go.microsoft.com) && \
    (yes | certmgr -ssl -m https://nugetgallery.blob.core.windows.net) && \
    (yes | certmgr -ssl -m https://nuget.org)

