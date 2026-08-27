output "cluster_iam_role_arn" {
  description = "IAM role ARN used by the EKS control plane"
  value       = aws_iam_role.cluster.arn
}

output "node_iam_role_arn" {
  description = "IAM role ARN used by EKS worker nodes"
  value       = aws_iam_role.node.arn
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "EKS cluster API endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded EKS cluster certificate authority"
  value       = aws_eks_cluster.this.certificate_authority[0].data
  sensitive   = true
}

output "cluster_oidc_issuer_url" {
  description = "OIDC issuer URL"
  value       = aws_eks_cluster.this.identity[0].oidc[0].issuer
}

output "oidc_provider_arn" {
  description = "IAM OIDC provider ARN"
  value       = aws_iam_openid_connect_provider.this.arn
}

output "system_node_group_name" {
  description = "Name of the EKS system managed node group"
  value       = aws_eks_node_group.system.node_group_name
}

output "ebs_csi_iam_role_arn" {
  description = "IAM role ARN used by the Amazon EBS CSI Driver via IRSA"
  value       = aws_iam_role.ebs_csi.arn
}

output "aws_load_balancer_controller_iam_role_arn" {
  description = "IAM role ARN used by AWS Load Balancer Controller via IRSA"

  value = aws_iam_role.aws_load_balancer_controller.arn
}
