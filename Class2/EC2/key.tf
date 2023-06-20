resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key11"
  public_key = file("~/.ssh/id_rsa.pub")

  tags = local.common_tags
}

output ec2 {
    value = aws_instance.web.public_ip
}