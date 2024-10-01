terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.61.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "soat7-lshiniti-infra-state"

}

