output "security_group_id" {
  description = "The ID of the security group"
  value = aws_security_group.this.*.id
}

output "security_group_vpc_id" {
  description = "The VPC ID of the security group"
  value = data.aws_vpc.vpc.id
}

