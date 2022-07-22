module "ec2" {
  for_each = var.instances
  source = "./module"
  instance_type = each.key
  instance_count = each.value
}

variable "instances" {
  default = {
    t3.micro = 2
    t2.micro = 1
  }
}