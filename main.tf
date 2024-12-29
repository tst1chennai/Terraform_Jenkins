
module "create_user" {
  source            = "./terraform-modules/create-user" # Path to your module
  user_name         = var.user_name
  create_policy     = true
  create_access_key = true
}

module "vpc" {
  source              = "./terraform-modules/create-vpc"
  vpc_cidr_block      = var.vpc_cidr_block
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}