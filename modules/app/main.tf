
provider "aws" {
  region  = "ap-southeast-2"
  profile = "dale"
}

variable "common_tags" {}
variable "environment" {}

resource "aws_kms_key" "rds_key" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
  tags = merge(
      var.common_tags, {
      name: join("-", ["name", var.environment])
  })

  # depends_on = [aws_vpc.vpc]
}
