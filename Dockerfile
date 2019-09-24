FROM fedora:30

ADD needed.repo /etc/yum.repos.d/

RUN dnf -y install python-urllib2_kerberos --releasever=29 && \
    dnf -y install /usr/bin/1minutetip && \
    dnf -y clean all

RUN mkdir /workdir
RUN chmod 600 /usr/share/qa-tools/1minutetip/1minutetip
RUN mkdir -p /confdir/.1minutetip

WORKDIR /workdir
