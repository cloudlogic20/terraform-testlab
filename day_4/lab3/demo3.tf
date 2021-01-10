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

resource "aws_instance" "web" {
  ami           = "ami-08f63db601b82ff5f"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-KR"
  }
}

resource "aws_eip" "demoeip" {
  vpc = true
}

/*
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.web.id
  allocation_id = aws_eip.demoeip.id
}
*/