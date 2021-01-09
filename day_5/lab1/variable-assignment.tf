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
  access_key = "XXXXXXXXXXXXXXXXXX"
  secret_key = "YYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
}

resource "aws_instance" "cloudlogic" {
  ami           = "ami-04b1ddd35fd71475a"
  instance_type = var.instancetype

  tags = {
    Name = "HelloWorld-KR"
  }
}

/*
variable "instancetype" {
  default = "t2.micro"
}
*/