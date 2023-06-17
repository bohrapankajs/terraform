variable "var1" {
  default     = "my Name is Pankaj"

}

output "sample" {
    value = var.var1
}
output "sample1" {

value = "He said: my name is ${var.var1}"
}