output "bastion_host_sg" {
    value = aws_security_group.bastion-host.id  
}

output "RDS_sg" {
    value = aws_security_group.RDS_SG.id
}