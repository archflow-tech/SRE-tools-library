module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.22"
  subnets         = var.subnet_ids
  vpc_id          = var.vpc_id
  node_groups = {
    eks_nodes = {
      desired_capacity = 3
      max_capacity     = 4
      min_capacity     = 1

      instance_type = "t3.medium"

      key_name       = var.key_name
    }
  }

  manage_aws_auth = true

  tags = var.tags
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}
