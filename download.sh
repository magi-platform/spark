#!/bin/bash

if [ ! -f distro/spark.tgz ]; then
    curl https://archive.apache.org/dist/spark/spark-3.2.0/spark-3.2.0-bin-hadoop2.7.tgz --output distro/spark.tgz
fi
