provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_vpc" "my_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name        = "JavaHomeVPC"
    Environment = "Dev"
  }
}

output "vpc_cidr" {
  value = aws_vpc.my_vpc.cidr_block
}
