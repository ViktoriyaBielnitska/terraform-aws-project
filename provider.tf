terraform {
  required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.0"
  }
}

  required_version = ">= 1.6.0"

  backend "s3" {
    bucket = "vika-terraform-state-bucket"
    key    = "global/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }

}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

