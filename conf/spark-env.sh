# EC2_HOST=$(curl -s http://169.254.169.254/latest/meta-data/public-hostname)
# EC2_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

SPARK_NO_DAEMONIZE=true
HADOOP_CONF_DIR=/opt/spark/hdfs-conf
SPARK_LOCAL_DIRS=/opt/app/data
SPARK_WORKER_PORT=7078
SPARK_DAEMON_JAVA_OPTS="$SPARK_DAEMON_JAVA_OPTS $DEFAULT_JAVA_OPTS"
