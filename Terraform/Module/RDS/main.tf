resource "aws_db_subnet_group" "db_subnet" {
    name = var.db_subnet_name
    subnet_ids = var.subnet_ids

    tags = {
      Name = "DB-Subnet-Group"
    }
}

resource "aws_db_instance" "rds_database" {
    allocated_storage = 20
    db_name = "books"
    engine = "mysql"
    engine_version = "8.0"
    instance_class = "db.t3.micro"
    username = var.username
    password = var.password
    skip_final_snapshot = true
    db_subnet_group_name = aws_db_subnet_group.db_subnet.id
    identifier = "books"
    vpc_security_group_ids = var.db_sg
}