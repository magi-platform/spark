#!/bin/bash

if [ "$SPARK_CLUSTER_DEBUG" == true ]; then
  echo 'starting spark master with remote debugging enabled...'
  DEBUG_CONF='-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=5050,suspend=n'
  export SPARK_MASTER_OPTS="$DEBUG_CONF $SPARK_MASTER_OPTS"
fi

/opt/spark/sbin/start-master.sh --host $SPARK_MASTER_HOST
