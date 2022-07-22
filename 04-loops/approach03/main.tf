resource "aws_instance" "web" {
  count         = length(var.instance_type)
  ami           = "ami-07fb268aa87edd4d3"
  instance_type = var.instance_type[count.index]

  tags = {
    Name = "terraform-${count.index+1}"
  }
}

variable "instance_type" {
  default = [ "t3.micro", "t3.small"]
}

//requirement is create no of instances of given instance types