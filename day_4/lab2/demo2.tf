terraform {
  required_version = "0.14.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=2.10,<=2.40"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
}

resource "aws_eip" "lb" {
  vpc = true
}

output "EIP" {
  value = aws_eip.lb
}


resource "aws_s3_bucket" "demo_bucket" {
  bucket = "cloudlogic202712"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

output "S3Bucket" {
  value = aws_s3_bucket.demo_bucket
}
