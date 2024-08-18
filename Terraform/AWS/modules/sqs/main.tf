resource "aws_sqs_queue" "main" {
  name                    = var.queue_name
  message_retention_seconds = 86400
  delay_seconds           = 0
  receive_wait_time_seconds = 0

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.dead_letter_queue.arn
    maxReceiveCount     = 5
  })

  kms_master_key_id = aws_kms_key.sqs_key.arn

  tags = merge(var.tags, {
    Name = "Main SQS Queue"
  })
}

resource "aws_sqs_queue" "dead_letter_queue" {
  name                    = "${var.queue_name}-dead-letter"
  message_retention_seconds = 86400

  tags = merge(var.tags, {
    Name = "Dead Letter Queue"
  })
}

resource "aws_kms_key" "sqs_key" {
  description         = "KMS key for SQS"
  enable_key_rotation = true

  tags = merge(var.tags, {
    Name = "SQS KMS Key"
  })
}

output "queue_url" {
  value = aws_sqs_queue.main.id
}
