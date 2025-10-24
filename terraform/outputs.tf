output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.public_subnet.subnet_id
}
output "public_subnet_cidr" {
  description = "The CIDR block of the public subnet"
  value       = module.public_subnet.subnet_cidr
}

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = module.internet_gateway.igw_id
}

output "public_route_table_id" {
  description = "The ID of the public route table"
  value       = module.public_route_table.public_route_table_id
}