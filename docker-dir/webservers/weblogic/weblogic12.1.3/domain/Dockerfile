# -------------------------------------------------------------
#inslall Server JRE8
# -------------------------------------------------------------
FROM oraclelinux:latest

ENV JAVA_PKG=server-jre-8u*-linux-x64.tar.gz \
    JAVA_HOME=/usr/java/default \
    PATH=$PATH:/usr/java/default/bin

ADD $JAVA_PKG /usr/java/

RUN mv $(ls -1 -d /usr/java/*) $JAVA_HOME


# -------------------------------------------------------------
# install WEBLOGIC server (without domain)
# -------------------------------------------------------------

# Environment variables required for this build (do NOT change)
# -------------------------------------------------------------
ENV FMW_PKG=wls1213_dev_update3.zip \
    MW_HOME=/u01/oracle \
    ORACLE_HOME=/u01/oracle \
    USER_MEM_ARGS="-Djava.security.egd=file:/dev/./urandom" \
    PATH=$PATH:/usr/java/default/bin:/u01/oracle/oracle_common/common/bin

# Copy packages
# -------------
COPY $FMW_PKG /u01/

# Setup filesystem and oracle user
# Install and configure Oracle JDK
# Adjust file permissions, go to /u01 as user 'oracle' to proceed with WLS installation
# ------------------------------------------------------------
RUN chmod a+xr /u01 && \
    useradd -b /u01 -m -s /bin/bash oracle && \
    echo oracle:oracle | chpasswd && \
    $JAVA_HOME/bin/jar xf /u01/$FMW_PKG && \
    mv wls12130/* $ORACLE_HOME && rmdir wls12130 && \
    cd $ORACLE_HOME && \
    sh configure.sh -silent && \
    find $ORACLE_HOME -name "*.sh" -exec chmod a+x {} \; && \
    chown oracle:oracle -R /u01 && \
    rm /u01/$FMW_PKG

WORKDIR $ORACLE_HOME 
USER oracle


# -------------------------------------------------------------
# WebLogic Domain Creation
# -------------------------------------------------------------

# WLS Configuration
# -------------------------------
#ARG ADMIN_PASSWORD
ENV ADMIN_PASSWORD="admin_password" \
    DOMAIN_NAME="base_domain" \
    DOMAIN_HOME="/u01/oracle/user_projects/domains/base_domain" \
    ADMIN_PORT="8001" \
    ADMIN_HOST="wlsadmin" \
    NM_PORT="5556" \
    MS_PORT="7001" \
    CONFIG_JVM_ARGS="-Dweblogic.security.SSL.ignoreHostnameVerification=true" \
    PATH=$PATH:/u01/oracle/oracle_common/common/bin:/u01/oracle/wlserver/common/bin:/u01/oracle/user_projects/domains/base_domain/bin:/u01/oracle

# Add files required to build this image
USER oracle
COPY container-scripts/* /u01/oracle/

# in case there are dos line endings: changes a "dos line ending" file to the "Unix line ending" file
RUN sed -i 's/\r$//' /u01/oracle/create-wls-domain.py
RUN sed -i 's/\r$//' /u01/oracle/wlst


# Configuration of WLS Domain
WORKDIR /u01/oracle
RUN /u01/oracle/wlst /u01/oracle/create-wls-domain.py && \
    mkdir -p /u01/oracle/user_projects/domains/base_domain/servers/AdminServer/security && \
    echo "username=weblogic" > /u01/oracle/user_projects/domains/base_domain/servers/AdminServer/security/boot.properties && \
    echo "password=$ADMIN_PASSWORD" >> /u01/oracle/user_projects/domains/base_domain/servers/AdminServer/security/boot.properties && \
    echo ". /u01/oracle/user_projects/domains/base_domain/bin/setDomainEnv.sh" >> /u01/oracle/.bashrc && \
    echo "export PATH=$PATH:/u01/oracle/wlserver/common/bin:/u01/oracle/user_projects/domains/base_domain/bin" >> /u01/oracle/.bashrc && \
    cp /u01/oracle/commEnv.sh /u01/oracle/wlserver/common/bin/commEnv.sh && \
    rm /u01/oracle/create-wls-domain.py /u01/oracle/jaxrs2-template.jar

# Expose Node Manager default port, and also default http/https ports for admin console
EXPOSE $NM_PORT $ADMIN_PORT $MS_PORT

WORKDIR $DOMAIN_HOME

# Define default command to start bash.
CMD ["startWebLogic.sh"]

