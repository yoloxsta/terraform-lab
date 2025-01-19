variable "bucket_name" {
  type = string
}

variable "acl" {
  type = string
  default = "private"
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {}
}