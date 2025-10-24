resource "aws_key_pair" "dev_key" {
  key_name   = var.key_name
  public_key = file("~/.ssh/dev-aws-key.pub")
}

resource "aws_instance" "ansible_target" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  associate_public_ip_address = var.associate_public_ip
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = merge(var.tags, {
    Name = var.instance_name
  })
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.ansible_target.id
}

output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.ansible_target.public_ip
}
output "private_ip" {
  description = "The private IP of the EC2 instance"
  value       = aws_instance.ansible_target.private_ip
}
