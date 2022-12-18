resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  count = var.enviroment == "prod" ? 1 : 0

  tags = {
    Name = "vpc-terraform"
  }

}
