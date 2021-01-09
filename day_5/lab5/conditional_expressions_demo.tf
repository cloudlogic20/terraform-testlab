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

variable "istest" {}

resource "aws_instance" "dev" {
   ami = "ami-04b1ddd35fd71475a"
   instance_type = "t2.micro"
   count = var.istest == true ? 3 : 0
}

resource "aws_instance" "prod" {
   ami = "ami-04b1ddd35fd71475a"
   instance_type = "t2.large"
   count = var.istest == false ? 1 : 0
}