variable "instance_type" {
  description = "The type of EC2 instance to use."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name of the AWS Key Pair to be used for the EC2 instance."
  type        = string
  default     = "my-key-pair"
}

variable "ami_id" {
  description = "The AMI ID to be used for the EC2 instance."
  type        = string
  default     = "ami-0f29c8402f8cce65c"
}

variable "public_key" {
  description = "The public key to be used for the AWS Key Pair."
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZ6"
}
