terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.44"
    }
  }

  required_version = ">= 1.2.0"
}

variable "TFC_AWS_RUN_ROLE_ARN" {}
variable "TFC_AWS_PROVIDER_AUTH" {}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "unprocessed_image_bucket" {
  bucket = "jamiegram.org_unprocessed_bucket"
  tags = {
    service = "frontdoor"
    environment = "production"
  }
}