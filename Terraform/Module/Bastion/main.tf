resource "aws_instance" "bastion" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.bastion_security]
  key_name = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "bastion"
  }
  depends_on = [ var.depends_aws_db_instance_name ]
  user_data = templatefile("${path.module}/rds-data.sh",{
    DB_HOST = var.db_instance_address
    DB_USER = var.db_user_name
    DB_PASS = var.db_password
  })

  user_data_replace_on_change = true
}