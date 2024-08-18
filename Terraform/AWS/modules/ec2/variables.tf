variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "Key pair name for EC2 instances"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where EC2 instance will be launched"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}
