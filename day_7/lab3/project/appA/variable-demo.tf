module "ec2module" {
  source = "../../modules/ec2"
  # instance_type = "t2.large"
}

module "iammodule" {
  source   = "../../modules/iam"
  username = "dummyuser"
}