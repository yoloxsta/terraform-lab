module "s3_bucket" {
  source      = "./modules/s3_yolo"
  bucket_name = var.bucket_name
  tags        = var.tags
}
