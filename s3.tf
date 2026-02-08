resource "aws_s3_bucket" "buckets" {
  for_each = toset(var.s3_bucket_names)
  bucket   = each.value

  tags = {
    Name        = each.value
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}