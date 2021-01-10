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
  secret_key = "YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
}

variable "types" {
  type = map(any)
  default = {
    us-east-1      = "t2.micro"
    ap-south-1     = "t2.nano"
    ap-southeast-1 = "t2.small"
  }
}

variable "list" {
  type    = list(any)
  default = ["t2.micro", "t2.nano", "t2.small"]
}

resource "aws_instance" "cloudlogic" {
  ami           = "ami-04b1ddd35fd71475a"
  instance_type = var.types["ap-south-1"]
  # instance_type = var.list[2]

  tags = {
    Name = "HelloWorld-KR"
  }
}

