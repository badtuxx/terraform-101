variable "vpc_id" {
  description = "The VPC ID where subnets will be created"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to be used for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to use."
  type        = string
} 

variable "key_name" {
  description = "The key name of the AWS Key Pair to be used for the EC2 instance."
  type        = string
}

variable "public_key" {
  description = "The public key to be used for the AWS Key Pair."
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0RkgdzIBVK019YIMVNMQqKwsU/PEuE6kK2NaOfoYyMxneWXrcoH66UY/B9IJv4dimAQri/IwtLLiW+0aQIM7Y9iiV22WtP6vQnSs1suiDXBCCIzlcEzKVIOyB40Jnbnlpapp4r/eKJswLNlGmCrgaXMuINfV0DBmNjhWKD2fz9PJFNxs+1FWRsnlruJyOtSDePEl9NYXLUAVDCk7LGbaBzXubdoYXX/efACeh7DWryK6z6PXwIcvGqF9tpCl977K3Kwv0LNZ3IvqqksjIMwn5WiFxQIe8rZXDM+Vkh+ErPBLoSIOKfNkdynMY0QKHzEaUylaO7+vdp6X8JMKBICZP jeferson@zion"
}

variable "security_group_id" {
  description = "The ID of the security group to be used for the EC2 instance."
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet where the EC2 instance will be created."
  type        = string
}
