FROM openjdk:8

ENV HADOOP_VERSION=3.2.0
ENV SPARK_VERSION=2.4.4
RUN curl -sL https://archive.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz \
    && curl -sL https://archive.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-without-hadoop-scala-2.12.tgz \
    && tar -xzvf hadoop-$HADOOP_VERSION.tar.gz \
    && tar -xzvf spark-$SPARK_VERSION-bin-without-hadoop-scala-2.12.tgz \
    && mv hadoop-$HADOOP_VERSION hadoop \
    && mv spark-$SPARK_VERSION-bin-without-hadoop-scala-2.12 spark \
    && rm -rf hadoop-$HADOOP_VERSION.tar.gz hadoop-$HADOOP_VERSION.tar.gz \