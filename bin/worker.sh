#!/bin/bash

if [ "$SPARK_CLUSTER_DEBUG" == true ]; then
  echo 'starting spark worker with remote debugging enabled...'
  DEBUG_CONF='-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=5050,suspend=n'
  export SPARK_WORKER_OPTS="$DEBUG_CONF $SPARK_WORKER_OPTS"
fi

/opt/spark/sbin/start-worker.sh spark://$SPARK_MASTER_HOST:7077
