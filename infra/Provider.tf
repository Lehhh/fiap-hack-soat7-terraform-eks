terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.61.0"
    }
  }
  backend "s3" {
    bucket = "soat7-lshiniti-infra-state"  # Nome do bucket existente
    key    = "terraform/eks/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = var.region
}

data "aws_kms_alias" "existing" {
  name = "alias/eks/eks-cluster"
}

data "aws_cloudwatch_log_group" "existing" {
  name = "/aws/eks/eks-cluster/cluster"
}

output "log_group_name" {
  value = data.aws_cloudwatch_log_group.existing.name
}
