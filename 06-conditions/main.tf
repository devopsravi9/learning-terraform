
resource "aws_instance" "web" {
  ami           = data.aws_ami.example.image_id
  instance_type = local.instance_type
//  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
  //  count       = 0 (we can write some condition whether this to be created or not )
  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {
  default = null
}

locals {
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}

//condition ? true_val : false_val

data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "base-with-ansible"
  owners           = ["self"]