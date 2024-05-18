output "public_ip" {
  value = aws_instance.webserver.public_ip
}

output "public_dns" {
  value = aws_instance.webserver.public_dns
}

output "private_ip" {
  value = aws_instance.webserver.private_ip
}

output "private_dns" {
  value = aws_instance.webserver.private_dns
}