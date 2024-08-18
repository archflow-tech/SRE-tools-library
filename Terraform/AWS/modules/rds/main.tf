resource "aws_db_instance" "db_name" {
  engine            = var.engine
  instance_class    = var.db_instance_class
  username          = var.username
  password          = var.password
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = aws_db_subnet_group.default.name
  storage_encrypted = true
  monitoring_interval = 60

  tags = merge(var.tags, {
    Name = "RDS Database"
  })
}

resource "aws_db_subnet_group" "default" {
  name       = "my-subnet-group"
  subnet_ids = var.subnet_ids

  tags = merge(var.tags, {
    Name = "RDS Subnet Group"
  })
}

resource "aws_cloudwatch_metric_alarm" "db_cpu_utilization" {
  alarm_name          = "DBCPUUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = "300"
  statistic           = "Average"
  threshold           = "80"
  alarm_actions       = ["arn:aws:sns:us-east-1:123456789012:my-sns-topic"]

  dimensions = {
    DBInstanceIdentifier = aws_db_instance.default.id
  }

  tags = merge(var.tags, {
    Name = "RDS CPU Utilization Alarm"
  })
}

output "db_instance_endpoint" {
  value = aws_db_instance.default.endpoint
}
