terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }

}

provider "aws" {
  region = "ap-south-2"
}

# Call the VPC module
module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  tags     = var.tags
}

# Call the Subnet module
#Not creating private subnet for now as NAT gateway needed for that which incurs cost
module "public_subnet" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  subnet_cidr             = var.subnet_cidr
  availability_zone       = var.availability_zone
  subnet_name             = var.subnet_name
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags                    = var.tags
}

# Call the Internet Gateway module
module "internet_gateway" {
  source   = "./modules/internetgateway"
  vpc_id   = module.vpc.vpc_id
  vpc_name = var.vpc_name
  tags     = var.tags
}

module "public_route_table" {
  source     = "./modules/routetable"
  vpc_id     = module.vpc.vpc_id
  vpc_name   = var.vpc_name
  igw_id     = module.internet_gateway.igw_id
  public_subnet_id = module.public_subnet.subnet_id
  tags       = var.tags
}


