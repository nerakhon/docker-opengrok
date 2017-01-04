FROM ubuntu:16.04
MAINTAINER "Jan Paul"

ENV DEBIAN_FRONTEND noninteractive
ENV OPENGROK_INSTANCE_BASE "/var/opengrok"

RUN apt-get update
RUN apt-get install -y openjdk-8-jre-headless exuberant-ctags git subversion mercurial tomcat8 wget inotify-tools unzip
ADD install.sh /usr/local/bin/install
RUN /usr/local/bin/install
ADD run.sh /usr/local/bin/run
ENTRYPOINT ["/usr/local/bin/run"]

EXPOSE 8080
