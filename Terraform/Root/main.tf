provider "aws" {
  
}

module "vpc_creation" {
    source = "../Module/VPC"

    vpc_cidr_block = "10.0.0.0/16"
    vpc_tag = "dev_vpc"

    availability_zone_1 = "us-east-1a"
    availability_zone_2 = "us-east-1b"

    public_subnet_1 = "10.0.1.0/24"
    public_subnet_1_tag = "Public-Subnet-1"

    public_subnet_2 = "10.0.2.0/24"
    public_subnet_2_tag = "Public-Subnet-2"

    public_rt_table = "dev-public-rt"

    private_subnet_1 = "10.0.3.0/24"
    private_subnet_1_tag = "Frontend-Subnet-1"

    private_subnet_2 = "10.0.4.0/24"
    private_subnet_2_tag = "Frontend-Subnet-2"
    
    private_subnet_3 = "10.0.5.0/24"
    private_subnet_3_tag = "Backend-Subnet-1"

    private_subnet_4 = "10.0.6.0/24"
    private_subnet_4_tag = "Backend-Subnet-2"

    private_subnet_5 = "10.0.7.0/24"
    private_subnet_5_tag = "RDS-Subnet-1"

    private_subnet_6 = "10.0.8.0/24"
    private_subnet_6_tag = "RDS-Subnet-2"

    aws_nat_tag = "dev_nat"
    private_rt_table = "dev-private-rt"
}