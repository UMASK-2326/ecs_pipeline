provider "aws" {
  region = "us-east-1"
}

# VPC Module

module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr_block       = var.vpc_cidr_block
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

# ALB Module

module "alb" {
  source             = "./modules/alb"

  alb_name           = var.alb_name
  target_group_name  = var.target_group_name
  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
  security_group_id  = module.vpc.security_group_id
}

# ECS Module

module "ecs" {
  source = "./modules/ecs"

  cluster_name             = var.cluster_name
  instance_type            = var.instance_type
  key_name                 = var.key_name
  capacity_provider_name   = var.capacity_provider_name
  vpc_id                   = module.vpc.vpc_id
  public_subnet_ids        = module.vpc.public_subnet_ids
  security_group_id        = module.vpc.security_group_id
  target_group_arn         = module.alb.target_group_arn
}

# RDS Module

module "rds" {
  source = "./modules/rds"

  vpc_id               = module.vpc.vpc_id
  private_subnet_ids   = module.vpc.private_subnet_ids
  db_username          = var.db_username
  db_password          = var.db_password
  security_group_id    = module.vpc.security_group_id
}

# cloudfront Module


module "cloudfront" {
  source   = "./modules/cloudfront"
  
  alb_name  = module.alb.alb_dns_name
}