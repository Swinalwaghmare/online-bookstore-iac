variable "vpc_cidr_block" {
    description = "Cidr Block of VPC"
    type = string
    default = ""
}

variable "vpc_tag" {
    description = "VPC tags"
    type = string
    default = ""
}

variable "availability_zone_1" {
    description = "Availabilty zone 1"
    type = string
    default = ""
}

variable "availability_zone_2" {
    description = "Availabilty zone 2"
    type = string
    default = ""
}


variable "public_subnet_1" {
    description = "Subnet 1 CIDR"
    type = string
    default = ""
}

variable "public_subnet_1_tag" {
    description = "Subnet 1 tag"
    type = string
    default = "Public-Subnet-1"
}
  
variable "public_subnet_2" {
    description = "Subnet 2 CIDR"
    type = string
    default = ""
}

variable "public_subnet_2_tag" {
    description = "Subnet 2 tag"
    type = string
    default = "Public-Subnet-2"
}
  
variable "private_subnet_1" {
    description = "Frontend Private Subnet 1 CIDR"
    type = string
    default = ""
}

variable "private_subnet_1_tag" {
    description = "Frontend Private Subnet 1 CIDR"
    type = string
    default = ""
}
  
variable "private_subnet_2" {
    description = "Frontend Private Subnet 2 CIDR"
    type = string
    default = ""
}

variable "private_subnet_2_tag" {
    description = "Frontend Private Subnet 2 tag"
    type = string
    default = ""
}
  
variable "private_subnet_3" {
    description = "Backend Private Subnet 3 CIDR"
    type = string
    default = ""
}

variable "private_subnet_3_tag" {
    description = "Backend Frontend Private Subnet 3 tag"
    type = string
    default = ""
}

variable "private_subnet_4" {
    description = "Backend Frontend Private Subnet 4 CIDR"
    type = string
    default = ""
}

variable "private_subnet_4_tag" {
    description = "Backend Frontend Private Subnet 4 tag"
    type = string
    default = ""
}

variable "private_subnet_5" {
    description = "RDS Private Subnet 5 CIDR"
    type = string
    default = ""
}

variable "private_subnet_5_tag" {
    description = "RDS Private Subnet 5 tag"
    type = string
    default = ""
}

variable "private_subnet_6" {
    description = "RDS Private Subnet 6 CIDR"
    type = string
    default = ""
}

variable "private_subnet_6_tag" {
    description = "RDS Private Subnet 6 tag"
    type = string
    default = ""
}

variable "internet_gateway_tag" {
    description = "Internet gateway name"
    type = string
    default = ""
  
}

variable "public_rt_table" {
    description = "Internet gateway route table"
    type = string
    default = "Public-RT"
}

variable "aws_nat_tag" {
    description = "Nat Gateway tag"
    type = string
    default = ""
}

variable "private_rt_table" {
    description = "Internet gateway route table"
    type = string
    default = "Private-RT"
}