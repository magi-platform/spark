#!/bin/bash

if [ ! -f distro/spark.tgz ]; then
    curl https://archive.apache.org/dist/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz --output distro/spark.tgz
fi
