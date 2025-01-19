output "bucket_id" {
  description = "The name of the S3 bucket"
  value       = module.s3.bucket_name
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = module.s3.bucket_arn
}
