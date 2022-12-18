terraform {
  required_version = "> 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.46.0"
    }
  }

  backend "s3" {
    bucket = "my-bucket-tf-0001-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      onwer   = "gama"
      manager = "terraform"
      region  = "us-west-2"
    }
  }
}

provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"

  default_tags {
    tags = {
      onwer   = "gama"
      manager = "terraform"
      region  = "us-west-2"
    }
  }
}
