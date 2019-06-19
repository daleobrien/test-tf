
provider "aws" {
  region  = "ap-southeast-2"
  profile = "dale"
}


variables "cidr_block" {
   
}

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
} 
