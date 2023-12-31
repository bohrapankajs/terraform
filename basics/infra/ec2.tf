resource "aws_instance" "app" {
  ami                        = "ami-06c3d7ff32032b5cc"
  instance_type              = "t2.micro"
  vpc_security_group_ids     = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

# Shows output on the screen
output "private_dns" {
    value   =   aws_instance.app.private_dns
}

# Creates Security Group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

    ingress {
      description      = "Allow SSH From Public"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }
  
    ingress {
      description      = "Allow HTTP From Public"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }

    # ingress {
    #   description      = Allow HTTPS From Public
    #   from_port        = 443
    #   to_port          = 443
    #   protocol         = "tcp"
    #   cidr_blocks      = ["0.0.0.0/0"]
    # }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_SSH"
  }
}