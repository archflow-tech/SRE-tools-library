resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
    encrypted   = true
  }

  monitoring = true

  tags = merge(var.tags, {
    Name = "Web Server"
  })
}

resource "aws_cloudwatch_log_group" "web_log_group" {
  name              = "/aws/ec2/web-server"
  retention_in_days = 7
}

resource "aws_cloudwatch_metric_alarm" "cpu_utilization" {
  alarm_name          = "CPUUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "80"
  alarm_actions       = ["arn:aws:sns:us-east-1:123456789012:my-sns-topic"]

  dimensions = {
    InstanceId = aws_instance.web.id
  }

  tags = merge(var.tags, {
    Name = "CPU Utilization Alarm"
  })
}

output "instance_id" {
  value = aws_instance.web.id
}
