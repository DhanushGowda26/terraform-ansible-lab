variable "vpc_id" {
  description = "VPC ID for the route table"
  type        = string
}

variable "igw_id" {
  description = "Internet Gateway ID"
  type        = string
}

variable "public_subnet_id" {
  description = "Public Subnet ID to associate with route table"
  type        = string
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
