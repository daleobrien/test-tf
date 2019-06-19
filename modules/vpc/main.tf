
provider "aws" {
  region  = "ap-southeast-2"
  profile = "dale"
}

variable "common_tags" {}
variable "environment" {}

variable "cidr_block" {
  type = string
}

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  tags = var.common_tags
} 
