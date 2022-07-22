variable "list" {
  default = [1, 2,]
}

variable "map" {
  default = {
    a = 5
    b = 6
    c = 7
  }
}

output "list_length" {
  value = length(var.list)
}

output "map_length" {
  value = length(var.map)
}