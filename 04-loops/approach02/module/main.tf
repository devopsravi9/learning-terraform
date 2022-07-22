resource "aws_instance" "web" {
  ami           = "ami-07fb268aa87edd4d3"
  instance_type = "t3.micro"
  tags          = {
    Name = "var.name_tag"
  }
}

variable "name_tag" {}


