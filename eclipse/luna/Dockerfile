FROM ubuntu:xenial

RUN \
    apt-get update && \
    apt-get install -y \
        openjdk-8-jdk \
        wget \
        libswt-gtk-3-java \
        sudo && \

    # Replace 1000 with your user / group id
    export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    mkdir -p /home/developer/.eclipse && \
    mkdir -p /home/developer/workspace && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer && \

    # install eclipse
    wget -O /tmp/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz \
    http://mirror.ibcp.fr/pub/eclipse/technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz && \
    tar xzf /tmp/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz -C /opt/ && \

    # cleanup
    apt-get clean && \
    rm -rf \
      /var/lib/apt/lists/* \
      /tmp/* \
      /var/tmp/*

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
CMD /opt/eclipse/eclipse
