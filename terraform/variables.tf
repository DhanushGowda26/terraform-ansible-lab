variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}
variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
}

variable "subnet_name" {
  description = "Name tag for the public subnet"
  type        = string
}
variable "map_public_ip_on_launch" {
  description = "Whether to assign public IPs to instances launched in the subnet"
  type        = bool
}

variable "tags" {
  description = "A map of tags for the subnet"
  type        = map(string)
  default     = {}
}

