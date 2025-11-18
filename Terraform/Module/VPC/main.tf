resource "aws_vpc" "name" {
    cidr_block = var.vpc_cidr_block
    tags = {
      Name = var.vpc_tag
    }
}

resource "aws_subnet" "public-1" {
    cidr_block = var.public_subnet_1
    vpc_id = aws_vpc.name.id
    availability_zone = var.availability_zone_1
    tags = {
        Name = var.public_subnet_1_tag
    }
}
resource "aws_subnet" "public-2" {
    cidr_block = var.public_subnet_2
    vpc_id = aws_vpc.name.id
    availability_zone = var.availability_zone_2
    tags = {
        Name = var.public_subnet_2_tag
    }
}

resource "aws_subnet" "private-1" {
    cidr_block = var.private_subnet_1
    vpc_id = aws_vpc.name.id
    availability_zone = var.availability_zone_1
    tags = {
      Name = var.private_subnet_1_tag
    }
}

resource "aws_subnet" "private-2" {
    cidr_block = var.private_subnet_2
    vpc_id = aws_vpc.name.id
    availability_zone = var.availability_zone_2
    tags = {
      Name = var.private_subnet_2_tag
    }
}

resource "aws_subnet" "private-3" {
    cidr_block = var.private_subnet_3
    vpc_id = aws_vpc.name.id
    availability_zone = var.availability_zone_1
    tags = {
      Name = var.private_subnet_3_tag
    }
}

resource "aws_subnet" "private-4" {
    cidr_block = var.private_subnet_4
    vpc_id = aws_vpc.name.id
    availability_zone = var.availability_zone_2
    tags = {
      Name = var.private_subnet_4_tag
    }
}

resource "aws_subnet" "private-5" {
    cidr_block = var.private_subnet_5
    vpc_id = aws_vpc.name.id
    availability_zone = var.availability_zone_1
    tags = {
      Name = var.private_subnet_5_tag
    }
}

resource "aws_subnet" "private-6" {
    cidr_block = var.private_subnet_6
    vpc_id = aws_vpc.name.id
    availability_zone = var.availability_zone_2
    tags = {
      Name = var.private_subnet_6_tag
    }
}

resource "aws_internet_gateway" "vpc_ig" {
    vpc_id = aws_vpc.name.id
    tags = {
        Name = var.internet_gateway_tag
    }  
}

resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.name.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.vpc_ig.id
    }
    tags = {
      Name = var.public_rt_table
    }
}

resource "aws_route_table_association" "public-rt-asso-1" {
    route_table_id = aws_route_table.public_rt.id
    subnet_id = aws_subnet.public-1.id  
}

resource "aws_route_table_association" "public-rt-asso-2" {
    route_table_id = aws_route_table.public_rt.id
    subnet_id = aws_subnet.public-2.id  
}

resource "aws_eip" "elastic_ip" {
  
}

resource "aws_nat_gateway" "name" {
    subnet_id = aws_subnet.public-1.id
    allocation_id = aws_eip.elastic_ip.id
    tags = {
        Name = var.aws_nat_tag
    }
}

resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.name.id
    
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.name.id
    }
    tags = {
      Name = var.private_rt_table
    }
}

resource "aws_route_table_association" "private_rt_ass_1" {
    subnet_id = aws_subnet.private-1.id
    route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_rt_ass_2" {
    subnet_id = aws_subnet.private-2.id
    route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_rt_ass_3" {
    subnet_id = aws_subnet.private-3.id
    route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_rt_ass_4" {
    subnet_id = aws_subnet.private-4.id
    route_table_id = aws_route_table.private_rt.id
}
