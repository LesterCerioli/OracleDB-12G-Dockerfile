FROM oraclelinux:7-slim

ENV ORACLE_HOME=/opt/oracle/product/12c/dbhome_1 \
    ORACLE_VERSION=12c \
    PATH=$ORACLE_HOME/bin:$PATH \
    ORACLE_SID=ORCLCDB \
    ORACLE_PWD=Oracle123 \
    DBCA_ROOT_PASSWORD=Oracle123 \
    DBCA_ADMIN_PASSWORD=Oracle123

RUN mkdir -p $ORACLE_HOME && \
    mkdir -p /opt/oracle/scripts && \
    mkdir -p /opt/oracle/oradata

# Ensure this file exists in the same directory as the Dockerfile
COPY linuxx64_12c_database.zip /opt/oracle/
