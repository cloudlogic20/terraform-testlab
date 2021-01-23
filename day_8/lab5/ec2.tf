resource "aws_instance" "myec2" {
  ami                    = "ami-04b1ddd35fd71475a"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0c5e1f62037c282b4"]
  key_name               = "test"
  subnet_id              = "subnet-002b3668"

  tags = {
    Name = "manual-demo"
  }
}


