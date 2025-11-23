output "vpc_name" {
  value = aws_vpc.name.tags.Name 
}

output "vpc_id" {
  value = aws_vpc.name.id  
}

output "subnet_1" {
  value = aws_subnet.public-1.id
}

output "RDS_Subnet_1" {
  value = aws_subnet.private-5.id
}

output "RDS_Subnet_2" {
  value = aws_subnet.private-6.id
}
