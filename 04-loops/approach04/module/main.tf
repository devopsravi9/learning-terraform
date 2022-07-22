resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = "ami-07fb268aa87edd4d3"
  instance_type = var.instance_type

  tags = {
    Name = "terraform-${count.index+1}"
  }
}

variable instance_count {}
variable instance_type  {}
