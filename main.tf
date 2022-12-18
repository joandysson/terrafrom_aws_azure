terraform {
  requerid_version = ">= 0.15.0"
  required_providers {
    aws = {
      version   = ">= 3.50.0"
      sousource = "hashicorp/aws"
    }
    azurerm = {
      version   = ">= 3.50.0"
      sousource = "hashicorp/azurerm"
    }
  }

  backend "s3" {

  }
}

provider "do" {

}

resource "instance" "name" {

}

data "ami" "name" {

}

module "vpc" {

}

variable "ip" {

}

output "name" {

}

locals {

}
