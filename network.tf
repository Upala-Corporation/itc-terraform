# Create Internet Gateway that enables your vpc to connect to the internet
resource "aws_internet_gateway" "itc-igw" {
    vpc_id = aws_vpc.itc-vpc.id
    tags = {
        Name = "itc-igw"
    }
}

# Create a custom route table for public subnet. public subnet can reach to the internet by using this.
resource "aws_route_table" "itc-public-crt" {
    vpc_id = aws_vpc.itc-vpc.id
    
    route {
        // Associated subnet can reach everywhere
        cidr_block = "0.0.0.0/0" 
        // CRT uses this IGW to reach internet
        gateway_id = aws_internet_gateway.itc-igw.id
    }
    
    tags = {
        Name = "itc-public-crt"
    }
}

# Associate CRT and Subnet
resource "aws_route_table_association" "itc-crta-public-subnet-1"{
    subnet_id = aws_subnet.itc-subnet-public-1.id
    route_table_id = aws_route_table.itc-public-crt.id
}

# Create a Security Group
resource "aws_security_group" "itc-sg-allowed" {
    vpc_id = aws_vpc.itc-vpc.id
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        // Allow only certain IP ranges to ssh!
        cidr_blocks = ["206.132.173.0/24", "206.132.173.18/32", "24.23.172.202/32"]
    }
    // All servers within VPC can reach each other
    ingress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["10.10.0.0/22"]
    }
    tags = {
        Name = "itc-sg-allowed"
    }
}
