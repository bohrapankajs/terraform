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

    default = {
    batch = 51,
    time = 9,
    Name =  "Sanket"
    }
}

output "sample3" {

    value = " This is batch no ${var.Maping["batch"]} and time is ${var.Maping["time"]} name of the person is ${var.Maping["Name"]}"
}

variable "sample4" {}

output "sample4" {
    value = "You type ${var.sample4}"
}

variable "sample5" {}


output "sample5" {
    value = "You type ${var.sample5}"
}

variable "bla" {}


output "sample6" {
    value = "You type ${var.bla}"
}