variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}

variable "environment" {
  description = "Environment (e.g., dev, staging, prod)"
  type        = string
  default     = "prod"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    Environment = var.environment
    Project     = "MyProject"
    ManagedBy   = "Terraform"
  }
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-12345678"
}

variable "key_name" {
  description = "Key pair name for EC2 instances"
  type        = string
}

variable "rds_password" {
  description = "Password for RDS"
  type        = string
  sensitive   = true
}

variable "domain_name" {
  description = "Route53 domain name"
  type        = string
  default     = "example.com"
}
