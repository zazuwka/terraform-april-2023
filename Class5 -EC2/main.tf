resource "aws_instance" "web" {
  ami           = "ami-024ad034bd64e81bf"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls5.id]
}

resource "aws_security_group" "allow_tls5" {
  name        = "allow_tls5"
  description = "Allow TLS inbound traffic"
  
    ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}