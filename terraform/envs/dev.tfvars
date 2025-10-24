vpc_cidr = "192.168.0.0/16"
vpc_name = "dev-vpc"

subnet_cidr = "192.168.1.0/24"
availability_zone = "ap-south-2a"
subnet_name = "dev-public-subnet"
map_public_ip_on_launch = true

tags = {
  Environment = "Development"
  Project     = "Terraform-demo"
}