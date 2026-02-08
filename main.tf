#resource "aws_s3_bucket" "lab" {
#  bucket = var.s3_bucket_names

#  lifecycle {
#    prevent_destroy = true
#  }

#  tags = {
#    Project     = "terraform-learning"
#    Owner       = "Brandon Johnson"
#    Environment = "dev"
#  }
#}

resource "aws_s3_bucket_versioning" "buckets" {
  for_each = aws_s3_bucket.buckets

  bucket = each.value.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "buckets" {
  for_each = aws_s3_bucket.buckets

  bucket                  = each.value.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
