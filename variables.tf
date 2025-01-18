#vpc
variable "project_name" {
  description = "Project Name"
  type        = string
  default = "terraform_aws_vpc"
}
variable "vpc_cidr1" {
  description = "VPC CIDR"
  type        = string
  default = "10.90.0.0/16"
}
#availability_zone
variable "azs" {
  description = "Availability Zone"
  type        = list(string)
  default     = []
}
#public_subnet
variable "public_subnet_cidr1" {
  description = "Public Subnet CIDR"
  type        = list(string)
  default     = ["10.90.1.0/24", "10.90.2.0/24"]
}
variable "map_public_ip_on_launch" {
  description = "Map Public IP on Launch"
  type        = bool
  default     = true
}
#private_subnet
variable "private_subnet_cidr1" {
  description = "Private Subnet CIDR"
  type        = list(string)
  default     = ["10.90.3.0/24", "10.90.4.0/24"]
}
variable "create_nat" {
  description = "Create NAT Gateway"
  type        = bool
  default     = false
}
variable "public_subnet_for_nat" {
  description = "Public Subnet for NAT Gateway"
  type        = number
  default     = 0
}
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-04b4f1a9cf54c11d0"
}
variable "key_name" {
  type        = string
  description = "EC2 key pair name"
  default = "mykey2"
}
variable "instance_type" {
  type        = string
  description = "EC2 Instance Type"
  default = "t2.micro"
}

#################

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default = "soetintaung"
}

variable "tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {}
}


