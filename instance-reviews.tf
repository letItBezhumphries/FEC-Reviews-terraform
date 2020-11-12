resource "aws_instance" "reviews-instance" {
  ami           = var.AMI_ID
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.reviews-sg.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name

  # User-data
  user_data = data.template_cloudinit_config.cloudinit-install-script.rendered
  
}
