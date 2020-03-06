variable "AWS_REGION" {    
    type = string
    default = "us-east-1"
    description = "AWS Region where resources are created"
}

variable "AWS_SUBNET_AZ" {
    type = string
    default = "us-east-1a"
    description = "AWS Availability Zone for subnets"
}

variable "VPC_CIDR_BLOCK" {
    type = string
    default = "172.31.0.0/16"
    description = "CIDR Block for VPC"
}

variable "VPC_PUBLIC_SUBNET1_CIDR_BLOCK" {
    type = string
    default = "172.31.0.0/24"
    description = "CIDR Block for Public Subnet"
}

variable "VPC_PRIVATE_SUBNET1_CIDR_BLOCK" {
    type = string
    default = "172.31.0.0/24"
    description = "CIDR Block for Private Subnet"
}

variable "SSH_KEY_PAIR" {    
    type = string
    default = "manoj-us-east1"
    description = "Key Pair to use"
}

variable "AMI" {
    type = string
    default = "ami-02eac2c0129f6376b"
    description = "Default CentOS 7 AMI to use"
}

variable "ROOT_EBS_SIZE" {
    type = number
    default = 40
    description = "Size (in GB) for the root block device"
}

variable "ADDITIONAL_EBS_SIZE" {
    type = number
    default = 100
    description = "Size (in GB) for the additional devices on Broker and Worker nodes"
}

variable "PREFIX" {
    type = string
    default = "itc"
    description = "Prefix for the resources"
}

variable "PREFIX_GEN_NODE" {
    type = string
    default = "itc_generator"
    description = "Prefix for the Generator Nodes"
}

variable "GEN_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Generator Nodes"
}

variable "GEN_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Generator Nodes"
}

variable "GEN_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.11"
        1 = "172.31.0.12"
        2 = "172.31.0.13"
        3 = "172.31.0.14"
    }
    description = "Private IPs for Generator Nodes"
}

variable "PREFIX_ANN_NODE" {
    type = string
    default = "itc_annotation"
    description = "Prefix for the Annotation Nodes"
}

variable "ANN_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Annotation Nodes"
}

variable "ANN_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Annotation Nodes"
}

variable "ANN_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.21"
        1 = "172.31.0.22"
    }
    description = "Private IPs for Annotation Nodes"
}

variable "PREFIX_ANNDB_NODE" {
    type = string
    default = "itc_annotation"
    description = "Prefix for the Annotation DB Nodes"
}

variable "ANNDB_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Annotation DB Nodes"
}

variable "ANNDB_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Annotation DB Nodes"
}

variable "ANNDB_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.31"
        1 = "172.31.0.32"
        2 = "172.31.0.33"
    }
    description = "Private IPs for Annotation DB Nodes"
}

variable "PREFIX_RAW_NODE" {
    type = string
    default = "itc_raw"
    description = "Prefix for the Raw group of Nodes"
}

variable "RAW_ZK_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Raw Zookeeper Nodes"
}

variable "RAW_ZK_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Raw Zookeeper DB Nodes"
}

variable "RAW_ZK_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.41"
        1 = "172.31.0.42"
        2 = "172.31.0.43"
    }
    description = "Private IPs for Raw Zookeeper Nodes"
}

variable "RAW_MASTER_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Raw Master Nodes"
}

variable "RAW_MASTER_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Raw Master Nodes"
}

variable "RAW_MASTER_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.51"
        1 = "172.31.0.52"
        2 = "172.31.0.53"
    }
    description = "Private IPs for Raw Master Nodes"
}

variable "RAW_WORKER_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Raw Worker Nodes"
}

variable "RAW_WORKER_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Raw Worker Nodes"
}

variable "RAW_WORKER_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.61"
        1 = "172.31.0.62"
        2 = "172.31.0.63"
        3 = "172.31.0.64"
    }
    description = "Private IPs for Raw Worker Nodes"
}

variable "RAW_BROKER_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Raw Worker Nodes"
}

variable "RAW_BROKER_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Raw Worker Nodes"
}

variable "RAW_BROKER_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.71"
        1 = "172.31.0.72"
        2 = "172.31.0.73"
        3 = "172.31.0.74"
    }
    description = "Private IPs for Raw Worker Nodes"
}

variable "PREFIX_DECODE_NODE" {
    type = string
    default = "itc_phy"
    description = "Prefix for the Raw group of Nodes"
}

variable "DECODE_ZK_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Raw Zookeeper Nodes"
}

variable "DECODE_ZK_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Raw Zookeeper DB Nodes"
}

variable "DECODE_ZK_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.81"
        1 = "172.31.0.82"
        2 = "172.31.0.83"
    }
    description = "Private IPs for Raw Zookeeper Nodes"
}

variable "DECODE_MASTER_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Raw Master Nodes"
}

variable "DECODE_MASTER_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Raw Master Nodes"
}

variable "DECODE_MASTER_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.91"
        1 = "172.31.0.92"
        2 = "172.31.0.93"
    }
    description = "Private IPs for Raw Master Nodes"
}

variable "DECODE_WORKER_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Raw Worker Nodes"
}

variable "DECODE_WORKER_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Raw Worker Nodes"
}

variable "DECODE_WORKER_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.101"
        1 = "172.31.0.102"
        2 = "172.31.0.103"
        3 = "172.31.0.104"
    }
    description = "Private IPs for Raw Worker Nodes"
}

variable "DECODE_BROKER_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Raw Worker Nodes"
}

variable "DECODE_BROKER_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Raw Worker Nodes"
}

variable "DECODE_BROKER_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.111"
        1 = "172.31.0.112"
        2 = "172.31.0.113"
    }
    description = "Private IPs for Raw Worker Nodes"
}

variable "PREFIX_STATEDB_NODE" {
    type = string
    default = "itc_statedb"
    description = "Prefix for the State DB Nodes"
}

variable "STATEDB_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for State DB Nodes"
}

variable "STATEDB_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of State DB Nodes"
}

variable "STATEDB_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.121"
        1 = "172.31.0.122"
        2 = "172.31.0.123"
    }
    description = "Private IPs for State DB Nodes"
}

variable "PREFIX_LB_NODE" {
    type = string
    default = "itc_lb"
    description = "Prefix for the LB Nodes"
}

variable "LB_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for LB Nodes"
}

variable "LB_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of LB Nodes"
}

variable "LB_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.131"
    }
    description = "Private IPs for LB Nodes"
}

variable "PREFIX_UTIL_NODE" {
    type = string
    default = "itc_util"
    description = "Prefix for the Util Nodes"
}

variable "UTIL_NODE_TYPE" {
    type = string
    default     = "t3.micro"
    description = "Type of instance to use for Util Nodes" 
}

variable "UTIL_NODE_COUNT" {
    type = number
    default     = 1
    description = "Number of Util Nodes" 
}

variable "UTIL_NODE_IPS" {
    type = map
    default = {
        0 = "172.31.0.141"
        1 = "172.31.0.142"
        2 = "172.31.0.143"
    }
    description = "Private IPs for Util Nodes" 
}

