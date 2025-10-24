variable "vpc_id" {
  description = "The VPC ID where the Internet Gateway will be attached"
  type        = string
}

variable "vpc_name" {
  description = "The VPC name used for tagging the IGW"
  type        = string
}

variable "tags" {
  description = "Additional tags for the IGW"
  type        = map(string)
  default     = {}
}
