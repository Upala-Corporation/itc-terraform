# Create instances
resource "aws_instance" "generator" {
    count                  = var.GEN_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.GEN_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.GEN_NODE_IPS, count.index)
    
    tags = {
        Name = "${format("%s%02s", var.PREFIX_GEN_NODE, (count.index+1))}"
    }

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

}

resource "aws_instance" "ann" {
    count                  = var.ANN_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.ANN_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.ANN_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    tags = {
        Name = "${format("%s%02s", var.PREFIX_ANN_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "anndb" {
    count                  = var.ANNDB_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.ANNDB_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.ANNDB_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    tags = {
        Name = "${format("%s%02s", var.PREFIX_ANNDB_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "rawzk" {
    count                  = var.RAW_ZK_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.RAW_ZK_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.RAW_ZK_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    tags = {
        Name = "${format("%szookeeper%02s", var.PREFIX_RAW_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "rawmaster" {
    count                  = var.RAW_MASTER_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.RAW_MASTER_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.RAW_MASTER_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    tags = {
        Name = "${format("%sstore-master%02s", var.PREFIX_RAW_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "rawworker" {
    count                  = var.RAW_WORKER_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.RAW_WORKER_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.RAW_WORKER_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    ebs_block_device {
        device_name = "/dev/xvdb"
        volume_type = "gp2"
        volume_size = var.ADDITIONAL_EBS_SIZE
    }

    ebs_block_device {
        device_name = "/dev/xvdc"
        volume_type = "gp2"
        volume_size = var.ADDITIONAL_EBS_SIZE
    }

    tags = {
        Name = "${format("%sstore-slave%02s", var.PREFIX_RAW_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "rawbroker" {
    count                  = var.RAW_BROKER_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.RAW_BROKER_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.RAW_BROKER_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    ebs_block_device {
        device_name = "/dev/xvdb"
        volume_type = "gp2"
        volume_size = var.ADDITIONAL_EBS_SIZE
    }

    tags = {
        Name = "${format("%sbroker%02s", var.PREFIX_RAW_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "decodezk" {
    count                  = var.DECODE_ZK_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.DECODE_ZK_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.DECODE_ZK_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    tags = {
        Name = "${format("%szookeeper%02s", var.PREFIX_DECODE_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "decodemaster" {
    count                  = var.DECODE_MASTER_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.DECODE_MASTER_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.DECODE_MASTER_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    tags = {
        Name = "${format("%sstore-master%02s", var.PREFIX_DECODE_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "decodeworker" {
    count                  = var.DECODE_WORKER_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.DECODE_WORKER_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.DECODE_WORKER_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    ebs_block_device {
        device_name = "/dev/xvdb"
        volume_type = "gp2"
        volume_size = var.ADDITIONAL_EBS_SIZE
    }

    ebs_block_device {
        device_name = "/dev/xvdc"
        volume_type = "gp2"
        volume_size = var.ADDITIONAL_EBS_SIZE
    }

    tags = {
        Name = "${format("%sstore-slave%02s", var.PREFIX_DECODE_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "decodebroker" {
    count                  = var.DECODE_BROKER_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.DECODE_BROKER_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.DECODE_BROKER_NODE_IPS, count.index)

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

    ebs_block_device {
        device_name = "/dev/xvdb"
        volume_type = "gp2"
        volume_size = var.ADDITIONAL_EBS_SIZE
    }

    tags = {
        Name = "${format("%sbroker%02s", var.PREFIX_DECODE_NODE, (count.index+1))}"
    }
}

resource "aws_instance" "statedb" {
    count                  = var.STATEDB_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.STATEDB_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.STATEDB_NODE_IPS, count.index)

    tags = {
        Name = "${format("%s%02s", var.PREFIX_STATEDB_NODE, (count.index+1))}"
    }

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

}

resource "aws_instance" "lb" {
    count                  = var.LB_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.LB_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.LB_NODE_IPS, count.index)

    tags = {
        Name = "${format("%s%02s", var.PREFIX_LB_NODE, (count.index+1))}"
    }

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

}

resource "aws_instance" "util" {
    count                  = var.UTIL_NODE_COUNT
    ami                    = var.AMI
    instance_type          = var.UTIL_NODE_TYPE
    subnet_id              = aws_subnet.itc-subnet-public-1.id
    vpc_security_group_ids = [aws_security_group.itc-sg-allowed.id]
    key_name               = var.SSH_KEY_PAIR
    private_ip             = lookup(var.UTIL_NODE_IPS, count.index)

    tags = {
        Name = "${format("%s%02s", var.PREFIX_UTIL_NODE, (count.index+1))}"
    }

    root_block_device {
        volume_size = var.ROOT_EBS_SIZE
    }

}
