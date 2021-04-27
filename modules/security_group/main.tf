data "aws_vpc" "default" {
  tags = {
    name = "dev"
  }
}

data "aws_vpc" "vpc" {
  id = data.aws_vpc.default.id
}

resource "aws_security_group" "this" {
    
    name                   = var.name
    description            = var.description
    vpc_id                 = data.aws_vpc.vpc.id

    revoke_rules_on_delete = var.revoke_rules_on_delete

    ingress {
        protocol  = -1
        self      = true
        from_port = 0
        to_port   = 0
    }
    
    tags = merge(
        {
        "Name" = format("%s", var.name)
        },
        var.tags,
    )
}