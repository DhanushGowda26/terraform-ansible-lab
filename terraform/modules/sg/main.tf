resource "aws_security_group" "ssh_sg" {
  description = "Allow SSH from my IP"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, {
    Name = "ssh-access-sg"
  })
}

variable "vpc_id" {
  description = "VPC ID to attach the security group"
  type        = string
}

variable "tags" {
  description = "Tags for the security group"
  type        = map(string)
  default     = {}
}


output "ssh_security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.ssh_sg.id
}


