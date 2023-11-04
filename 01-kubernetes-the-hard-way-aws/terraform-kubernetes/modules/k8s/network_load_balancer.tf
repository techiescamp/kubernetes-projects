resource "aws_lb" "network_lb" {
  name               = "${var.environment}-${var.application}"
  subnets            = [aws_subnet.main_subnet.id]
  internal           = false
  load_balancer_type = var.load_balancer_type

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-network-lb",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}

resource "aws_lb_target_group" "main_tg" {
  name        = "${var.environment}-${var.application}"
  port        = var.target_group_port
  protocol    = var.target_group_protocol
  vpc_id      = aws_vpc.main_vpc.id
  target_type = var.target_group_target_type

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-target-group",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}

resource "aws_lb_target_group_attachment" "target_ip_attachment" {
  count            = length(var.target_ips)
  target_group_arn = aws_lb_target_group.main_tg.arn
  target_id        = var.target_ips[count.index]
}

resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = aws_lb.network_lb.arn
  port              = var.lb_listener_port
  protocol          = var.lb_listener_protocol

  default_action {
    type             = var.lb_listener_default_action_type
    target_group_arn = aws_lb_target_group.main_tg.arn
  }

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-lb-listener",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}
