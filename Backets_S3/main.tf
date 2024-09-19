terraform {
  required_version = "1.9.6"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "terraform"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "user-terraform-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"

  }
}