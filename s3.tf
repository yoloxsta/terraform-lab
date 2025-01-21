module "s3_bucket" {
  source      = "./modules/s3_yolo"
  bucket_name = var.bucket_name
  tags        = var.tags
  acl         = "public-read"

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
