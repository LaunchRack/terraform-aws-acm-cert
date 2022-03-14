terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.0"
}

provider "aws" {
  region = var.region
}

module "aws_acm_cert" {
  source      = "../"
  domain_name = var.domain_name
  name        = var.name
  tags        = var.tags
}
