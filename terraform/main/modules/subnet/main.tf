resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.vpc_id # Usa a variável passada
  cidr_block              = var.public_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.public_availability_zone

  tags = {
    Name = "MinhaPublicSubnet"
  }
}

# modules/subnet/main.tf
resource "aws_subnet" "private_subnet" {
  vpc_id                  = var.vpc_id # Usa a variável passada
  cidr_block              = var.private_cidr_block
  map_public_ip_on_launch = false
  availability_zone       = var.private_availability_zone

  tags = {
    Name = "MinhaPrivateSubnet"
  }
}
