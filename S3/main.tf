provider "aws" {
    shared_credentials_file = "/home/pmoody/.aws/credentials"
    region = "${var.region}"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "test-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

}