output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnet_ids
}

output "web_sg_id" {
  description = "The ID of the web security group"
  value       = aws_security_group.web_sg.id
}

output "web_instance_id" {
  description = "The ID of the web EC2 instance"
  value       = aws_instance.web.id
}

output "web_instance_public_ip" {
  description = "The public IP of the web EC2 instance"
  value       = aws_instance.web.public_ip
}