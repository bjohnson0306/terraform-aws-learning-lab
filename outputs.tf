output "s3_bucket_names" {
  description = "Name of S3 bucket created"
  value       = keys(aws_s3_bucket.buckets)
}