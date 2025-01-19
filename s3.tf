module "s3" {
  source = "./modules/s3_yolo"
  bucket_name = var.bucket_name
  acl = "public-read"
  tags = var.tags
}

