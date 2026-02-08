variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "s3_bucket_names" {
  description = "List of s3 bucket names to create"
  type        = list(string)
}