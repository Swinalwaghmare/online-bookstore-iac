output "bastion_host_sg" {
    value = aws_security_group.bastion-host.id  
}