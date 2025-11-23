variable "db_subnet_name" {
    type = string  
}

variable "subnet_ids" {
    type = list(string)
}

variable "username" {
    type = string  
}

variable "password" {
    type = string
}

variable "db_sg" {
    type = list(string)
}