FROM fedora:30

ADD needed.repo /etc/yum.repos.d/

RUN dnf -y install python-urllib2_kerberos --releasever=29 && \
    dnf -y install /usr/bin/1minutetip && \
    dnf -y clean all

ADD wrapper /wrapper

RUN chmod 0755 /wrapper

RUN mkdir /workdir

WORKDIR /workdir
