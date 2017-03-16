FROM ubuntu:14.04.5

RUN \
    apt-get -y update && \
    apt-get -y install openssh-server && mkdir /var/run/sshd && \
    groupadd jhipster && \
    useradd jhipster -s /bin/bash -m -g jhipster -G sudo && \
    echo 'jhipster:jhipster' | chpasswd && \
    mkdir -p /home/jhipster/.ssh/ && \
    chown -R jhipster:jhipster /home/jhipster

EXPOSE 22
CMD /usr/sbin/sshd -D
