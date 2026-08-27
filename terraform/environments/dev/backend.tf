terraform {
  backend "s3" {
    bucket       = "production-eks-platform-438064565553-ap-south-2-tfstate"
    key          = "production-eks-platform/dev/terraform.tfstate"
    region       = "ap-south-2"
    encrypt      = true
    use_lockfile = true
  }
}
