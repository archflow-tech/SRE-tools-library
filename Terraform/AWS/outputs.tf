output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "rds_endpoint" {
  value = module.rds.db_instance_endpoint
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "elb_dns_name" {
  value = module.elb.dns_name
}

output "cloudtrail_name" {
  value = module.cloudtrail.main.name
}

output "route53_zone_id" {
  value = module.route53.primary.zone_id
}

output "sqs_queue_url" {
  value = module.sqs.queue_url
}

output "blockchain_network_id" {
  value = module.managed_blockchain.network_id
}
