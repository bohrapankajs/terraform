resource "aws_instance" "app" {
  ami                        = data.aws_ami.myami.image_id
  instance_type              = "t2.micro"
  vpc_security_group_ids     = [var.sg]

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

variable "sg" {}

# Shows output on the screen
output "private_dns" {
    value   =   aws_instance.app.public_ip
}
