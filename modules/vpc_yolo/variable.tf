#vpc
variable "project_name" {
  description = "Project Name"
  type        = string
  default = "terraform_aws_vpc"
}
variable "env_prefix" {
  description = "Environment Prefix"
  type        = string
  default = "test"
}
variable "vpc_cidr" {
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
variable "public_subnet_cidr" {
  description = "Public Subnet CIDR"
  type        = list(string)
  default     = []
}
variable "map_public_ip_on_launch" {
  description = "Map Public IP on Launch"
  type        = bool
  default     = true
}
#private_subnet
variable "private_subnet_cidr" {
  description = "Private Subnet CIDR"
  type        = list(string)
  default     = []
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

variable "sg_ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "sg_egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "ec2_ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ec2_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 1
}

variable "ec2_key_name" {
  description = "Name of the key pair for EC2 instances"
  type        = string
}