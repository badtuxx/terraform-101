# modules/nat_gateway/main.tf
resource "aws_eip" "nat_gateway_ip" {
  domain = "vpc"

  tags = {
    Name = "NATGatewayEIP"
  }
}

resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.nat_gateway_ip.id
  subnet_id     = var.public_subnet_id
  tags = {
    Name = "NATGateway"
  }
}
