resource "aws_lb" "ninjas_alb" {
  name               = "ninjas-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ninjas-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-northeast-3a.id,
    aws_subnet.public-ap-northeast-3b.id,
    aws_subnet.public-ap-northeast-3c.id
  ]
  enable_deletion_protection = false

  tags = {
    Name    = "ninjasLoadBalancer"
    Service = "ninjas"
    Owner   = "User"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.ninjas_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ninjas_tg.arn
  }
}
