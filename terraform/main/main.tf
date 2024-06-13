module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id # Passando o ID da VPC como variável para o módulo subnet
}

module "nat_gateway" {
  source           = "./modules/nat_gateway"
  public_subnet_id = module.subnet.public_subnet_id # Passando o ID da subnet pública como variável para o módulo nat_gateway  
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id # Passando o ID da VPC como variável para o módulo internet_gateway
}

module "route_table" {
  source            = "./modules/route_table"
  vpc_id            = module.vpc.vpc_id                 # Passando o ID da VPC como variável para o módulo route_table
  igw_id            = module.internet_gateway.igw_id    # Passando o ID do Internet Gateway como variável para o módulo route_table
  nat_gateway_id    = module.nat_gateway.nat_gateway_id # Passando o ID do NAT Gateway como variável para o módulo route_table
  public_subnet_id  = module.subnet.public_subnet_id    # Passando o ID da subnet pública como variável para o módulo route_table
  private_subnet_id = module.subnet.private_subnet_id   # Passando o ID da subnet privada como variável para o módulo route_table
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id # Passando o ID da VPC como variável para o módulo security_group
}

module "ec2" {
  source            = "./modules/ec2"
  vpc_id            = module.vpc.vpc_id                       # Passando o ID da VPC como variável para o módulo ec2
  public_subnet_id  = module.subnet.public_subnet_id          # Passando o ID da subnet pública como variável para o módulo ec2
  security_group_id = module.security_group.security_group_id # Passando o ID do security group como variável para o módulo ec2
  ami_id            = var.ami_id                              # Passando o ID da AMI como variável para o módulo ec2
  instance_type     = var.instance_type                       # Passando o tipo de instância como variável para o módulo ec2
  key_name          = var.key_name                            # Passando o nome da chave como variável para o módulo ec2
  public_key        = var.public_key                          # Passando a chave pública como variável para o módulo ec2
}
