FROM ubuntu:xenial

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y \
        wget \
        libswt-gtk-3-java

RUN apt-get install -y sudo

RUN \
  # configure the "jhipster" user
  groupadd developer && \
  useradd developer -s /bin/bash -m -g developer -G sudo && \
  echo 'developer:developer' |chpasswd && \
  mkdir -p /home/developer && \
  mkdir -p /home/developer/.eclipse && \
  mkdir -p /home/developer/workspace && \
  chown -R developer:developer /home/developer

# # Replace 1000 with your user / group id
# RUN export uid=1000 gid=1000 && \
#     mkdir -p /home/developer && \
#     mkdir -p /home/developer/.eclipse && \
#     mkdir -p /home/developer/workspace && \
#     echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
#     echo "developer:x:${uid}:" >> /etc/group && \
#     echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
#     chmod 0440 /etc/sudoers.d/developer && \
#     chown ${uid}:${gid} -R /home/developer
#
# install eclipse
RUN wget -O /tmp/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz \
    http://mirror.ibcp.fr/pub/eclipse/technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz
RUN tar xzf /tmp/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz -C /opt/

USER developer
ENV HOME /home/developer
RUN chown developer:developer /home/developer/.eclipse
WORKDIR /home/developer

CMD /opt/eclipse/eclipse
