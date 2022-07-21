resource "aws_instance" "web" {
  ami           = "ami-07fb268aa87edd4d3"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.SGID]

  tags = {
    Name = "terraform"
  }
}

variable "SGID" {}