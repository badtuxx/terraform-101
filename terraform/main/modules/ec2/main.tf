resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name        = var.key_name
  subnet_id       = var.public_subnet_id
  security_groups = [var.security_group_id]

  # Configuração para tornar a instância acessível através do Elastic IP
  associate_public_ip_address = true

  tags = {
    Name = "WebServer"
  }

  user_data = <<-EOF
              #!/bin/bash
                apt-get update -y
                apt-get install nginx -y
                systemctl start nginx
                systemctl enable nginx
                echo "<h1>Deployado via Terraform com o Gomex e o Jeferson</h1>" > /var/www/html/index.html
                EOF
}

resource "aws_key_pair" "my_key" {
  key_name   = var.key_name
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0RkgdzIBVK019YIMVNMQqKwsU/PEuE6kK2NaOfoYyMxneWXrcoH66UY/B9IJv4dimAQri/IwtLLiW+0aQIM7Y9iiV22WtP6vQnSs1suiDXBCCIzlcEzKVIOyB40Jnbnlpapp4r/eKJswLNlGmCrgaXMuINfV0DBmNjhWKD2fz9PJFNxs+1FWRsnlruJyOtSDePEl9NYXLUAVDCk7LGbaBzXubdoYXX/efACeh7DWryK6z6PXwIcvGqF9tpCl977K3Kwv0LNZ3IvqqksjIMwn5WiFxQIe8rZXDM+Vkh+ErPBLoSIOKfNkdynMY0QKHzEaUylaO7+vdp6X8JMKBICZP jeferson@zion"
}

