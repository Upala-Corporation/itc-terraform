# Create all hosts with a specific CentOS AMI
AMI = "ami-074e2d6769f445be5"
# AWS region to create the resources at
AWS_REGION = "us-west-1"
AWS_SUBNET_AZ = "us-west-1a"
# VPC 
VPC_CIDR_BLOCK = "172.31.0.0/16"
VPC_PUBLIC_SUBNET1_CIDR_BLOCK = "172.31.0.0/22"
VPC_PRIVATE_SUBNET1_CIDR_BLOCK = "172.31.4.0/22"
# SSH Keypair to use for all the instances
SSH_KEY_PAIR = "manoj-us-west1"
PREFIX = "itc"
# Root Device size (GB)
ROOT_EBS_SIZE = 40
# Additional EBS Storage for Brokers, Workers per device (GB)
ADDITIONAL_EBS_SIZE = 100

###### Generator ######
PREFIX_GEN_NODE = "itc_generator"
GEN_NODE_TYPE = "t3.micro"
#GEN_NODE_COUNT = 4
GEN_NODE_COUNT = 1
GEN_NODE_IPS = {0 = "172.31.0.11", 1 = "172.31.0.12", 2 = "172.31.0.13", 3 = "172.31.0.14"}

###### Annotation ######
PREFIX_ANN_NODE = "itc_annotation"
ANN_NODE_TYPE = "t3.micro"
#ANN_NODE_COUNT = 2
ANN_NODE_COUNT = 1
ANN_NODE_IPS = {0 = "172.31.0.21", 1 = "172.31.0.22"}

###### Annotation DB ######
PREFIX_ANNDB_NODE = "itc_annotationdb"
ANNDB_NODE_TYPE = "t3.micro"
#ANNDB_NODE_COUNT = 3
ANNDB_NODE_COUNT = 1
ANNDB_NODE_IPS = {0 = "172.31.0.31", 1 = "172.31.0.32", 2 = "172.31.0.33"}

###### Raw ######
PREFIX_RAW_NODE = "itc_raw"
# Zookeeper nodes run ZK
RAW_ZK_NODE_TYPE = "t3.micro"
#RAW_ZK_NODE_COUNT = 3
RAW_ZK_NODE_COUNT = 1
RAW_ZK_NODE_IPS = {0 = "172.31.0.41", 1 = "172.31.0.42", 2 = "172.31.0.43"}
# Master nodes run ZK and Hadoop master services
RAW_MASTER_NODE_TYPE = "t3.micro"
#RAW_MASTER_NODE_COUNT = 3
RAW_MASTER_NODE_COUNT = 1
RAW_MASTER_NODE_IPS = {0 = "172.31.0.51", 1 = "172.31.0.52", 2 = "172.31.0.53"}
# Worker nodes run Hadoop data nodes
RAW_WORKER_NODE_TYPE = "t3.micro"
#RAW_WORKER_NODE_COUNT = 4
RAW_WORKER_NODE_COUNT = 1
RAW_WORKER_NODE_IPS = {0 = "172.31.0.61", 1 = "172.31.0.62", 2 = "172.31.0.63", 3 = "172.31.0.64"}
# Broker nodes run Kafka
RAW_BROKER_NODE_TYPE = "t3.micro"
#RAW_BROKER_NODE_COUNT = 4
RAW_BROKER_NODE_COUNT = 1
RAW_BROKER_NODE_IPS = {0 = "172.31.0.71", 1 = "172.31.0.72", 2 = "172.31.0.73", 3 = "172.31.0.74"}

###### Decode ######
PREFIX_DECODE_NODE = "itc_phy"
# Zookeeper nodes run ZK
DECODE_ZK_NODE_TYPE = "t3.micro"
#DECODE_ZK_NODE_COUNT = 3
DECODE_ZK_NODE_COUNT = 1
DECODE_ZK_NODE_IPS = {0 = "172.31.0.81", 1 = "172.31.0.82", 2 = "172.31.0.83"}
# Master nodes run Hadoop master services
DECODE_MASTER_NODE_TYPE = "t3.micro"
#DECODE_MASTER_NODE_COUNT = 3
DECODE_MASTER_NODE_COUNT = 1
DECODE_MASTER_NODE_IPS = {0 = "172.31.0.91", 1 = "172.31.0.92", 2 = "172.31.0.93"}
# Worker nodes run Hadoop data nodes
DECODE_WORKER_NODE_TYPE = "t3.micro"
#DECODE_WORKER_NODE_COUNT = 3
DECODE_WORKER_NODE_COUNT = 1
DECODE_WORKER_NODE_IPS = {0 = "172.31.0.101", 1 = "172.31.0.102", 2 = "172.31.0.103"}
# Broker nodes run Kafka
DECODE_BROKER_NODE_TYPE = "t3.micro"
#DECODE_BROKER_NODE_COUNT = 3
DECODE_BROKER_NODE_COUNT = 1
DECODE_BROKER_NODE_IPS = {0 = "172.31.0.111", 1 = "172.31.0.112", 2 = "172.31.0.113"}

###### StateDB ######
PREFIX_STATEDB_NODE = "itc_statedb"
STATEDB_NODE_TYPE = "t3.micro"
#STATEDB_NODE_COUNT = 3
STATEDB_NODE_COUNT = 1
STATEDB_NODE_IPS = {0 = "172.31.0.121", 1 = "172.31.0.122", 2 = "172.31.0.123"}

###### LB ######
PREFIX_LB_NODE = "itc_lb"
LB_NODE_TYPE = "t3.micro"
LB_NODE_COUNT = 1
LB_NODE_IPS = {0 = "172.31.0.131"}

###### Util ######
PREFIX_UTIL_NODE = "itc_util"
UTIL_NODE_TYPE = "t3.micro"
#UTIL_NODE_COUNT = 3
UTIL_NODE_COUNT = 1
UTIL_NODE_IPS = {0 = "172.31.0.141", 1 = "172.31.0.142", 2 = "172.31.0.143"}
