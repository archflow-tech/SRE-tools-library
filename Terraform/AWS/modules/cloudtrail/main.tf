resource "aws_s3_bucket" "cloudtrail_bucket" {
  bucket = "my-cloudtrail-logs-${var.environment}"
  acl    = "private"

  tags = merge(var.tags, {
    Name = "CloudTrail S3 Bucket"
  })
}

resource "aws_cloudtrail" "main" {
  name                          = "MyCloudTrail"
  s3_bucket_name                = aws_s3_bucket.cloudtrail_bucket.bucket
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_log_file_validation    = true
  kms_key_id                    = aws_kms_key.cloudtrail_key.arn

  tags = merge(var.tags, {
    Name = "CloudTrail"
  })
}

resource "aws_kms_key" "cloudtrail_key" {
  description = "KMS key for CloudTrail"
  enable_key_rotation = true

  tags = merge(var.tags, {
    Name = "CloudTrail KMS Key"
  })
}
