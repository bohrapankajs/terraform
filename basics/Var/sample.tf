variable "var1" {
  default     = "my Name is Pankaj"

}

# output "sample" {
#     value = var.var1
# }
output "sample1" {

value = "He said: my name is ${var.var1}"
}

variable "list-res" {
default = [
    "Pankaj",
    "Sanket",
    0001,
    "sama00",
    false
]
}

output "sample2" {
    value = "Name of persons are ${var.list-res[0]} and ${var.list-res[1]} with address number ${var.list-res[3]} and last ${var.list-res[4]} "
}

variable "Maping" {

    default = 
    batch = 51,
    time = 9,
    Name =  "Sanket"
}

