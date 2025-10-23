output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.public.id
}
output "subnet_cidr" {
  description = "The CIDR block of the subnet"
  value       = aws_subnet.public.cidr_block
}