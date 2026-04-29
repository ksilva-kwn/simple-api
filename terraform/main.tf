locals {
  public_subnet_cidrs  = ["172.16.1.0/24", "172.16.2.0/24"]
  private_subnet_cidrs = ["172.16.3.0/24", "172.16.4.0/24"]
}

data "aws_availability_zones" "available" {
  state = "available"
}
