provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "terraform-tf-1234"
    key            = "terraform.terraform_remote_state"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-tf"
  }
}

# resource "aws_vpc" "my_vpc" {
#   count            = terraform.workspace == "dev" ? 0 : 1
#   cidr_block       = var.vpc_cidr
#   instance_tenancy = "default"
#
#   tags = {
#     Name        = "JavaHomeVPC"
#     Environment = terraform.workspace
#   }
# }

# output "vpc_cidr" {
#   value = aws_vpc.my_vpc.cidr_block
# }
