vpc_cidr = "192.168.0.0/16"
vpc_name = "dev-vpc"

subnet_cidr = "192.168.1.0/24"
availability_zone = "ap-south-2a"
subnet_name = "dev-public-subnet"
map_public_ip_on_launch = true

ami_id = "ami-0bd4cda58efa33d23"
instance_type = "t3.micro"
key_name = "dev-aws-key"
associate_public_ip = true
instance_name = "dev-ansible-target"


tags = {
  Environment = "Development"
  Project     = "Terraform-demo"
}