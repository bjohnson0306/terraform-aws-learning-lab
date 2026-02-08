output "bucket_name" {
  description = "Name of S3 bucket created"
  value       = aws_s3_bucket.lab.bucket
}