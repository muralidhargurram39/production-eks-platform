variable "aws_region" {
  description = "AWS region where infrastructure will be deployed"
  type        = string
  default     = "ap-south-2"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "production-eks-platform"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
