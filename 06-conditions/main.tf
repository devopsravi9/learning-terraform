
resource "aws_instance" "web" {
  ami           = "ami-07fb268aa87edd4d3"
  instance_type = var.instance_type == "null" ? "t3.micro" : var.instance_type
  //  count       = 0 (we can write some condition whether this to be created or not )
}

variable "instance_type" {
  default = null
}

//condition ? true_val : false_val