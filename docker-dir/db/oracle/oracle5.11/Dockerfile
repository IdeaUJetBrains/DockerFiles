#https://github.com/wnameless/docker-oracle-xe-11g/blob/master/README.md
FROM ubuntu:14.04.4

RUN apt-get update && apt-get install -y dos2unix

ADD assets /assets
RUN dos2unix  /assets/setup.sh /assets/setup.sh
RUN dos2unix  /assets/startup.sh /assets/startup.sh
RUN /assets/setup.sh

ENV ORACLE_ALLOW_REMOT true
#ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D