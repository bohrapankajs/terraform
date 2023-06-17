resource "aws_instance" "app" {
  ami                        = "ami-06c3d7ff32032b5cc"
  instance_type              = "t2.micro"
#   vpc_security_group_ids     = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

# Shows output on the screen
output "private_dns" {
    value   =   aws_instance.app.private_dns
}