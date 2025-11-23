resource "aws_security_group" "bastion-host" {
    description = "Allow Developer from SSH"
    vpc_id = var.aws_vpc_id
    depends_on = [var.aws_vpc_name]
    
    ingress {
        description = "Allow Traffic from developer"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.my_ip]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      Name = "Bastion-SG"
    }
}

