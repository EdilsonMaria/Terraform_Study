terraform {
  required_version = "1.9.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tag
}
