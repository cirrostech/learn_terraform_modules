provider "aws" {
  region = "us-east-1"
}

module "aws_security_group" {
  source = "./modules/security_group"

  name = var.name
  
}