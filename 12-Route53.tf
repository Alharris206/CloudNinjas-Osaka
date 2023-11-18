data "aws_route53_zone" "main" {
  name         = "plumbersportal32.com."  # The domain name you want to look up
  private_zone = false
}


resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "plumberportal32.com"
  type    = "A"

  alias {
    name                   = aws_lb.ninjas_alb.dns_name
    zone_id                = aws_lb.ninjas_alb.zone_id
    evaluate_target_health = true
  }
}
