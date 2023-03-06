terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.0"
    }
  }
  cloud {
    organization = "hashicorpaya"
    workspaces {
      name = "ticket102298"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "danielabucket" {
  bucket = "daniela-ticketoil"
  tags = {
    Name        = " test bucket"
    Environment = "Dev"
  }
}
