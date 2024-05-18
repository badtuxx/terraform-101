output "nat_gateway_id" {
  value = aws_nat_gateway.my_nat_gateway.id
}

output "nat_gateway_eip" {
  value = aws_eip.nat_gateway_ip.public_ip
}