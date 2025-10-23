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