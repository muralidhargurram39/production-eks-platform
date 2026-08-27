module "vpc" {
  source = "../../modules/vpc"

  project_name = var.project_name
  environment  = var.environment

  cluster_name = "production-eks-platform-dev"

  vpc_cidr = "10.0.0.0/16"

  availability_zones = [
    "ap-south-2a",
    "ap-south-2b",
    "ap-south-2c"
  ]

  public_subnet_cidrs = [
    "10.0.0.0/20",
    "10.0.32.0/20",
    "10.0.64.0/20"
  ]

  private_subnet_cidrs = [
    "10.0.16.0/20",
    "10.0.48.0/20",
    "10.0.80.0/20"
  ]
}

module "eks" {
  source = "../../modules/eks"

  project_name = var.project_name
  environment  = var.environment

  cluster_name       = "production-eks-platform-dev"
  kubernetes_version = "1.36"

  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids

  cluster_public_access_cidrs = [
    "49.37.152.109/32"
  ]

  node_instance_types = ["t3.medium"]

  node_desired_size = 3
  node_min_size     = 3
  node_max_size     = 6
}
