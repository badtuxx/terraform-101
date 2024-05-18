resource "aws_subnet" "public_subnet" {
  vpc_id            = var.vpc_id  # Usa a variável passada
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1a"

  tags = {
    Name = "MinhaPublicSubnet"
  }
}

# modules/subnet/main.tf
resource "aws_subnet" "private_subnet" {
  vpc_id            = var.vpc_id  # Usa a variável passada
  cidr_block        = "10.0.2.0/24"
  map_public_ip_on_launch = false
  availability_zone = "eu-west-1b"

  tags = {
    Name = "MinhaPrivateSubnet"
  }
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

# modules/subnet/outputs.tf
output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}