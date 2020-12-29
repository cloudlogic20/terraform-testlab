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
  access_key = "XXXXXXXXXXXXXXXXXXXXX"
  secret_key = "YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
}

# resource "aws_key_pair" "cloudkey" {
#   key_name   = "cloudkey"
#   public_key = "ssh-rsa AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA cloudlogic20@DESKTOP-OGFFQRP"
# }

resource "aws_instance" "cloudlogic" {
  ami           = "ami-08f63db601b82ff5f"
  instance_type = "t2.nano"
  key_name      = "cloudkey"

  tags = {
    Name = "HelloWorld-KR"
  }
}



