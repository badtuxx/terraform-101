# modules/nat_gateway/main.tf
resource "aws_eip" "nat_gateway_ip" {
  domain = "vpc"

  tags = {
    Name = "NATGatewayEIP"
  }
}

resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.nat_gateway_ip.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "NATGateway"
  }
}

# Assegure que a tabela de rotas para subnets privadas direciona o tráfego para a internet através deste NAT Gateway
resource "aws_route" "private_nat_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.my_nat_gateway.id
}
