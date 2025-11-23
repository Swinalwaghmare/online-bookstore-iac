variable "ami" {
  type = string
}

variable "instance_type" {
    type = string
}

variable "subnet_id" {
    type = string
}

variable "key_name" {
    type  = string  
}

variable "bastion_security" {
  type = string
}

variable "depends_aws_db_instance_name" {
  type = string
}

variable "db_instance_address" {
  type = string  
}

variable "db_user_name" {
  type = string  
}

variable "db_password" {
  type = string
}