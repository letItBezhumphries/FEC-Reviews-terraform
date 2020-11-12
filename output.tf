output "mysql-instance" {
  value = aws_instance.reviews-instance.public_ip
}

output "rds" {
  value = aws_db_instance.mysqldb.endpoint
}
