/*terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"vika.tf
}
resource "aws_instance" "vika_ec2" {
    ami = "ami-0341d95f75f311023"
    instance_type = "t2.micro"
    subnet_id = "subnet-061bd254a858eecf6"
    
  tags = {
    Name = "Vika-EC2-Terraform"
  }
}
*/

