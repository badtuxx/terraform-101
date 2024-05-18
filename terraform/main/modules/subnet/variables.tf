variable "vpc_id" {
  description = "The VPC ID where subnets will be created"
  type        = string
}

variable "public_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
  default = "10.0.1.0/24"
}

variable "private_cidr_block" {
  description = "The CIDR block for the private subnet"
  type        = string
  default = "10.0.2.0/24"
}