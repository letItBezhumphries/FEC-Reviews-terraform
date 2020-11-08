output "mysql-instance" {
  value = aws_instance.mysql-instance.public_ip
}

output "rds" {
  value = aws_db_instance.mysqldb.endpoint
}