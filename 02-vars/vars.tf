variable "a" {
  default = 100
}

// variable block is having one reference, her a is reference

output "a" {
  value = var.a
}

// variable in terraform can be accessed by var.var_name or ${var.var_name}

output "x" {
  value = "value of a is ${var.a}"
}

output "vars" {
  value = "values, a = ${var.a}, b=${var.b}, c=${var.c}, d=${var.d} "
}

// if a variable uses with combination of other strings or in quotes ${} is used

variable "b" {}
// this variable is declared in  .tfvars or .auto.tfvars file.
//other than terraform.tffile all other *.tffiles must be loaded manually from Cli, -var-file=*.tfvars

variable "c" {}
// this declared from Cli of terraform , command is : -var c=400

variable "d" {}
//this declared from shell, command is : export TF_VAR_d=500

variable "list" {
  default = [100, 200, 300, "abc", true]
}

output "sample" {
  value = var.list[1]
}

// access variable from list

variable "map" {
  default = {
    a = 100
    b = 200
  }
}

output "sample1" {
  value = var.map["a"]
}