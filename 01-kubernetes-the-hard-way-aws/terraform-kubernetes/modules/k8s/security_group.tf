resource "aws_security_group" "main_sg" {
  name        = "${var.environment}-${var.application}-sg"
  description = "Kubernetes security group"
  vpc_id      = aws_vpc.main_vpc.id

  dynamic "ingress" {
    for_each = var.ingress_rules

    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-security-group"
      Environment = var.environment
      Owner       = var.owner
      CostCenter  = var.cost_center
      Application = var.application
    },
    var.tags
  )
}