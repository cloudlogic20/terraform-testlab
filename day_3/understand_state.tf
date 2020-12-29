terraform {
  required_version = "0.14.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXX"
  secret_key = "YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
}

resource "aws_instance" "cloudlogic" {
  ami           = "ami-08f63db601b82ff5f"
  instance_type = "t2.medium"

  tags = {
    Name = "HelloWorld-KR"
  }
}

resource "aws_eip" "eip_sol2" {
  instance = aws_instance.cloudlogic.id
}
