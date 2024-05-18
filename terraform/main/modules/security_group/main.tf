resource "aws_security_group" "webserver_sg" {
  name        = "webserver-security-group"
  description = "Security group for webserver allowing HTTP traffic"
  vpc_id      = var.vpc_id

  # Permitir tráfego de entrada na porta 80 (HTTP) de qualquer endereço
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Permitir tráfego de entrada na porta 443 (HTTPS) de qualquer endereço (opcional)
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Permitir tráfego de entrada SSH (porta 22) de um endereço IP específico (opcional)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Permitir todo o tráfego de saída
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "WebServerSG"
  }
}
