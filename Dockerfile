FROM magiplatform/centos-jdk:latest

ENV SPARK_VERSION 3.1.2
ENV HADOOP_VERSION 3.2
ENV SPARK_MASTER_HOST "spark-master"
ENV SPARK_HOME /opt/spark
ENV PATH "$PATH:$SPARK_HOME/bin"

ADD ./distro/spark.tgz /tmp

RUN PKG=$(ls /tmp | grep spark) && \
    mv /tmp/$PKG $SPARK_HOME && \
    chmod -R u+x $SPARK_HOME/sbin && \
    chmod -R u+x $SPARK_HOME/bin

COPY ./conf/* $SPARK_HOME/conf/

COPY ./bin/* /opt/app/bin/

RUN chmod -R u+x /opt/app/bin
