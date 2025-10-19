resource "aws_instance" "vika_ec2" {
    ami = "ami-0341d95f75f311023"
    instance_type = "t2.micro"
    subnet_id = "subnet-061bd254a858eecf6"
    
  tags = {
    Name = "Vika-EC2-Terraform"
  }
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "vika-terraform-state-bucket"
  tags = {
    Name        = "TerraformStateBucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "tf_state_versioning" {
  bucket = aws_s3_bucket.tf_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
