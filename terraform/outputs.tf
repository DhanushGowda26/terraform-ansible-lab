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

# output "ssh_security_group_id" {
#   description = "The ID of the security group"
#   value       = module.ssh_security_group.ssh_security_group_id
# }
# output "instance_id" {
#   description = "The ID of the EC2 instance"
#   value       = module.ec2_instance.instance_id
# }

# output "public_ip" {
#   description = "The public IP of the EC2 instance"
#   value       = module.ec2_instance.public_ip
# }
# output "private_ip" {
#   description = "The private IP of the EC2 instance"
#   value       = module.ec2_instance.private_ip
# }

