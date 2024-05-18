output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_block
}

output "public_dns" {
  value = "http://${module.ec2.public_dns}"
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "private_dns" {
  value = module.ec2.private_dns
}

output "private_ip" {
  value = module.ec2.private_ip
}
