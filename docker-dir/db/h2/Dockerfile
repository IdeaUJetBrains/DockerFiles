FROM java:7

#Version 1.3.176 (2014-04-05), Last Stable
ENV DOWNLOAD http://www.h2database.com/h2-2014-04-05.zip
#BETA:
#ENV DOWNLOAD http://www.h2database.com/h2-2016-01-21.zip

ENV DATA_DIR /opt/h2-data

RUN curl ${DOWNLOAD} -o h2.zip \
    && unzip h2.zip -d /opt/ \
    && rm h2.zip \
    && mkdir -p ${DATA_DIR}
#RUN chmod +x /opt/h2/bin/h2.sh

EXPOSE 81 1521

#Supported options for tcp Server (Server mode):
#java -cp /opt/h2/bin/h2*.jar org.h2.tools.Server -?
CMD java -cp /opt/h2/bin/h2*.jar org.h2.tools.Server \
 	-web -webAllowOthers -webPort 81 \
 	-tcp -tcpAllowOthers -tcpPort 1521 \
 	-baseDir ${DATA_DIR}
