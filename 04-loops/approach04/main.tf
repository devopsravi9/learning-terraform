module "ec2" {
  for_each = var.instances
  source = "./module"
  instance_type = each.key
  instance_count = each.value
}

variable "instances" {
  default = {
    "t3.micro" = 2
    "t2.micro" = 1
  }
}

//usage of for_each
//resource "azurerm_resource_group" "rg" {
//  for_each = {
//    a_group = "eastus"
//    another_group = "westus2"
//  }
//  name     = each.key
//  location = each.value
//}
//