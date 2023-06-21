resource "aws_instance" "app" {
  ami                        = data.aws_ami.myami.image_id
  instance_type              = "t2.micro"
  vpc_security_group_ids     = [var.sg]
  
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.private_ip
  }

  provisioner "remote-exec" {
    inline = [
        "sleep 120s"
      "ansible-pull -U https://github.com/bohrapankajs/ansible.git -e ansible_user=centos -e ansible_password=DevOps321 -e COMPONENT=mongodb -e ENV=dev roboshop-pull.yml"
    ]
  }
}

variable "sg" {}

# Shows output on the screen
output "private_dns" {
    value   =   aws_instance.app.public_ip
}
