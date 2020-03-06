resource "aws_vpc" "itc-vpc" {
    cidr_block = var.VPC_CIDR_BLOCK
    enable_dns_support = "true" // gives you an internal domain name
    enable_dns_hostnames = "true" // gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "default"    
    
    tags = {
        Name = "itc-vpc"
    }
}

resource "aws_subnet" "itc-subnet-public-1" {
    vpc_id = aws_vpc.itc-vpc.id
    cidr_block = var.VPC_PUBLIC_SUBNET1_CIDR_BLOCK
    map_public_ip_on_launch = "true" // this is public subnet
    availability_zone = var.AWS_SUBNET_AZ
    tags = {
        Name = "itc-subnet-public-1"
    }
}

resource "aws_subnet" "itc-subnet-private-1" {
    vpc_id = aws_vpc.itc-vpc.id
    cidr_block = var.VPC_PRIVATE_SUBNET1_CIDR_BLOCK
    map_public_ip_on_launch = "false" // this is private subnet
    availability_zone = var.AWS_SUBNET_AZ
    tags = {
        Name = "itc-subnet-private-1"
    }
}
