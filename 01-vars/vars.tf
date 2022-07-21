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

// if a variable uses with combination of other strings or in quotes ${} is used