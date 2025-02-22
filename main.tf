module "vpc" {
  source                = "./modules/vpc_yolo"
  project_name          = var.project_name
  vpc_cidr              = var.vpc_cidr1
  public_subnet_cidr    = var.public_subnet_cidr1
  private_subnet_cidr   = var.private_subnet_cidr1
  create_nat            = var.create_nat #required public_subnet_cidr
  public_subnet_for_nat = var.public_subnet_for_nat
  azs                   = var.azs
  ec2_ami               = var.ami_id # Replace with a valid AMI ID
  ec2_instance_type     = var.instance_type
  ec2_key_name          = var.key_name
  ec2_count             = 1
}

