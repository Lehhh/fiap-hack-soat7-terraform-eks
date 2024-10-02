module "prod" {
  source = "../../infra"
  cluster_name = "eks-cluster"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.61.0"
    }
  }
  required_version = ">= 0.14.9"
  backend "s3" {
    bucket         = "soat7-lshiniti-infra-state"
    key            = "terraform/eks/terraform.tfstate"
    region         = "us-east-1"
  }
}