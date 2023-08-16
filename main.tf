resource "aws_security_group" "sg" {
  description = "Allows access to VPC endpoint service"
  name        = "vpce-${module.this.id}-access"
  vpc_id      = var.vpc_id

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }

  tags = module.this.tags
}

resource "aws_vpc_endpoint" "endpoint" {
  service_name       = var.vpc_endpoint_service_name
  vpc_endpoint_type  = var.vpc_endpoint_service_type
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids
  security_group_ids = [aws_security_group.sg.id]

  tags = merge({
    Name = module.this.id
  }, module.this.tags)
}
