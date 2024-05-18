variable "vpc_id" {
  description = "The VPC ID where the route table will be created"
  type        = string
}

variable "igw_id" {
  description = "The Internet Gateway ID to be associated with the route table"
  type        = string
}

variable "nat_gateway_id" {
  description = "The NAT Gateway ID to be associated with the route table"
  type        = string
}

variable "public_subnet_id" {
  description = "The public subnet ID to be associated with the route table"
  type        = string
}

variable "private_subnet_id" {
  description = "The private subnet ID to be associated with the route table"
  type        = string
}