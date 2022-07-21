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
  value = "values, ${var.a}, ${var.b}, ${var.c}, ${var.d} "
}

// if a variable uses with combination of other strings or in quotes ${} is used

variable "b" {}
// this variable is declared in  .tfvars or .auto.tfvars file

variable "c" {}
// this declared from Cli of terraform , command is : terraform apply -auto-approve -var c=400

variable "d" {}
//this declared from shell, command is : export TF_VAR_d=500