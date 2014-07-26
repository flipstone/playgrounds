# flipstone/playground-base
FROM 46fc21600df9

RUN apt-get update && \
    apt-get install -y default-jdk && \
    curl -o /usr/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
    chmod 0755 /usr/bin/lein

USER vagrant
RUN lein repl

USER root

