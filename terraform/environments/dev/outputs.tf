output "environment" {
  description = "Current deployment environment"
  value       = var.environment
}

output "aws_region" {
  description = "AWS deployment region"
  value       = var.aws_region
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "nat_gateway_ids" {
  description = "NAT Gateway IDs"
  value       = module.vpc.nat_gateway_ids
}

output "nat_gateway_public_ips" {
  description = "NAT Gateway public IP addresses"
  value       = module.vpc.nat_gateway_public_ips
}

output "eks_cluster_iam_role_arn" {
  description = "EKS cluster IAM role ARN"
  value       = module.eks.cluster_iam_role_arn
}

output "eks_node_iam_role_arn" {
  description = "EKS node IAM role ARN"
  value       = module.eks.node_iam_role_arn
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_oidc_issuer_url" {
  description = "EKS OIDC issuer URL"
  value       = module.eks.cluster_oidc_issuer_url
}

output "eks_oidc_provider_arn" {
  description = "IAM OIDC provider ARN"
  value       = module.eks.oidc_provider_arn
}

output "system_node_group_name" {
  description = "Name of the EKS system managed node group"
  value       = module.eks.system_node_group_name
}
