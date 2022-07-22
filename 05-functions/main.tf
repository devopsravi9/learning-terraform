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

variable "map1" {
  default = {
    firstchoice = {
      a = 1
      b = 2
      c = 3
      d = 4
    }
  }
}

output "list_length" {
  value = length(var.list)
}

output "map_length" {
  value = length(var.map)
}

output "map_in_map_length" {
  value = length(var.map1["firstchoice"])
}