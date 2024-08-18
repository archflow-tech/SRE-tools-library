provider "aws" {
  region = var.region
}

module "vpc" {
  source            = "./modules/vpc"
  vpc_cidr          = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  tags              = var.tags
}

module "iam" {
  source = "./modules/iam"
  tags   = var.tags
}

module "ec2" {
  source       = "./modules/ec2"
  ami_id       = var.ami_id
  instance_type = "t3.medium"
  key_name     = var.key_name
  subnet_id    = element(module.vpc.public_subnet_ids, 0)
  tags         = var.tags
}

module "rds" {
  source                 = "./modules/rds"
  db_instance_class      = "db.t3.medium"
  db_name                = "mydb"
  username               = "admin"
  password               = var.rds_password
  subnet_ids             = module.vpc.private_subnet_ids
  vpc_security_group_ids = [module.vpc.default_security_group_id]
  tags                   = var.tags
}

module "eks" {
  source   = "./modules/eks"
  vpc_id   = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids
  tags     = var.tags
}

module "ecs" {
  source       = "./modules/ecs"
  cluster_name = "prod-ecs-cluster"
  tags         = var.tags
}

module "elb" {
  source             = "./modules/elb"
  ssl_certificate_id = "arn:aws:acm:us-east-1:123456789012:certificate/abcd1234-5678-90ab-cdef-1234567890ab"
  tags               = var.tags
}

module "cloudwatch" {
  source = "./modules/cloudwatch"
  tags   = var.tags
}

module "cloudtrail" {
  source = "./modules/cloudtrail"
  tags   = var.tags
}

module "route53" {
  source      = "./modules/route53"
  domain_name = var.domain_name
  tags        = var.tags
}

module "sqs" {
  source     = "./modules/sqs"
  queue_name = "prod-queue"
  tags       = var.tags
}

module "managed_blockchain" {
  source       = "./modules/managed_blockchain"
  network_name = "prod-blockchain-network"
  tags         = var.tags
}
