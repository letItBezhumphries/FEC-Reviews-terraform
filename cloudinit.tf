data "template_file" "init-script" {
  template = file("boot-scripts/init_database.sh")
  vars     = {
    RDS_PASSWORD = var.RDS_PASSWORD
    RDS_HOST     = split(":", aws_db_instance.mysqldb.endpoint)[0]
    RDS_USERNAME = "root"
    RDS_PORT     = split(":", aws_db_instance.mysqldb.endpoint)[1]
  }
}

data "template_cloudinit_config" "cloudinit-install-script" {
  gzip = false
  base64_encode = false

  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.init-script.rendered
  }

}
