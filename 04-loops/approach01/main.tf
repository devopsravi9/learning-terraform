variable "no_of_instances" {
  default = 2
}

resource "aws_instance" "web" {
  ami           = "ami-07fb268aa87edd4d3"
  instance_type = "t3.micro"
  count         = var.no_of_instances

  tags = {
    Name = "terraform"
  }
}
