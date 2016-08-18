FROM centos:centos7

MAINTAINER Martin Nakshbandi "https://github.com/modarn/docker-rvm"
ENV HOME /root

CMD ["/bin/bash","-l"]
RUN yum -y install curl which tar
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN \curl -sSL https://get.rvm.io |bash -s stable --ruby=2.0
RUN source /usr/local/rvm/scripts/rvm


