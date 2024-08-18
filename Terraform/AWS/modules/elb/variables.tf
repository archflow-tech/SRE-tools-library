variable "ssl_certificate_id" {
  description = "ARN of the SSL certificate for ELB"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}
