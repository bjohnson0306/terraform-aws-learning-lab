# Terraform Syntax Cheat Sheet

This document captures common Terraform syntax and patterns used in this repository.
It is intended as a quick reference while learning Infrastructure as Code (IaC).

---

## Providers

```hcl
provider "aws" {
  region = var.aws_region
}

## Single varible
variable "aws_region" {
  type        = string
  description = "AWS region"
}


## List of values
variable "s3_bucket_names" {
  type        = list(string)
  description = "List of S3 bucket names"
}

## Multiple resources
resource "aws_s3_bucket" "buckets" {
  for_each = toset(var.s3_bucket_names)
  bucket   = each.value
}

##accessing values
each.key → map key

each.value → actual value

##referencing
aws_s3_bucket.buckets["my-bucket-name"].id


##Outputs
output "s3_bucket_names" {
  value = keys(aws_s3_bucket.buckets)
}


## Useful Commands
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy

