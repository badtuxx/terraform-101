output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.giropops_vpc.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.giropops_vpc.cidr_block
}

output "arn" {
  description = "ARN of vpc"
  value       = aws_vpc.giropops_vpc.arn
}
