resource "aws_route53_zone" "primary" {
  name = var.domain_name

  tags = merge(var.tags, {
    Name = "Primary Hosted Zone"
  })
}

resource "aws_route53_health_check" "web" {
  fqdn              = aws_elb.main.dns_name
  port              = 443
  type              = "HTTPS"
  resource_path     = "/"
  request_interval  = 30
  failure_threshold = 3

  tags = merge(var.tags, {
    Name = "Web Health Check"
  })
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www"
  type    = "A"
  alias {
    name                   = aws_elb.main.dns_name
    zone_id                = aws_elb.main.zone_id
    evaluate_target_health = true
  }

  tags = merge(var.tags, {
    Name = "www Record"
  })
}
