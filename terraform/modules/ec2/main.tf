resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name        = var.key_name
  subnet_id       = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.webserver_sg.name]

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
                echo "<h1>Deployado via Terraform</h1>" > /usr/share/nginx/html/index.html
                EOF
}

resource "aws_key_pair" "my_key" {
  key_name   = var.key_name
  public_key = var.public_key
}