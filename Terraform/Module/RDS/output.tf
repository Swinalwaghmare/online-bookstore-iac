output "rds_endpoint" {
    value = aws_db_instance.rds_database.address
}

output "rds_name" {
    value = aws_db_instance.rds_database.identifier
}