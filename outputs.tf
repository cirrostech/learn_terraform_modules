
output "security_group_id" {
  description = "The ID of the security group"
  value = module.aws_security_group.security_group_id
}

output "security_group_vpc_id" {
  description = "The VPC ID of the security group"
  value = module.aws_security_group.security_group_vpc_id
}

