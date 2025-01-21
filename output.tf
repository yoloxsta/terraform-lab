output "bucket_name" {
  description = "Name of the S3 bucket from the child module"
  value       = module.s3_bucket.bucket_name
}

output "bucket_arn" {
  description = "ARN of the S3 bucket from the child module"
  value       = module.s3_bucket.bucket_arn
}
