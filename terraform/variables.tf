variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the VPC"
  type        = map(string)
  default     = {}
}

