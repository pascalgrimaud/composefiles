FROM ubuntu:xenial

RUN \
    apt-get update && \
    apt-get install -y \
        openjdk-8-jdk \
        wget \
        libswt-gtk-3-java \
        sudo && \

    # configure the "jhipster" user
    groupadd developer && \
    useradd developer -s /bin/bash -m -g developer -G sudo && \
    echo 'developer:developer' |chpasswd && \
    mkdir -p /home/developer && \
    mkdir -p /home/developer/.eclipse && \
    mkdir -p /home/developer/workspace && \
    chown -R developer:developer /home/developer

RUN \
    # install eclipse Neon
    wget -O /tmp/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz \
    http://mirror.ibcp.fr/pub/eclipse/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz && \
    tar xzf /tmp/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz -C /opt/ && \

    # cleanup
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
CMD /opt/eclipse/eclipse
