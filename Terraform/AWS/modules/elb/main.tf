resource "aws_elb" "main" {
  name               = "my-elb"
  availability_zones = data.aws_availability_zones.available.names

  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  listener {
    instance_port     = 443
    instance_protocol = "HTTPS"
    lb_port           = 443
    lb_protocol       = "HTTPS"
    ssl_certificate_id = var.ssl_certificate_id
  }

  tags = merge(var.tags, {
    Name = "Main ELB"
  })
}

output "dns_name" {
  value = aws_elb.main.dns_name
}
