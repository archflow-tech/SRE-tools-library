resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "MyAppDashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric"
        x    = 0
        y    = 0
        width = 24
        height = 6
        properties = {
          metrics = [
            ["AWS/EC2", "CPUUtilization", "InstanceId", "${aws_instance.web.id}"],
            [ ".", "DiskWriteOps", ".", "." ]
          ]
          period = 300
          stat = "Average"
          region = var.region
          title = "EC2 Instance Metrics"
        }
      }
    ]
  })

  tags = merge(var.tags, {
    Name = "Main Dashboard"
  })
}
