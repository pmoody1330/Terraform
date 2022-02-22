resource "aws_s3_bucket" "Elasticsearch_bucket" {
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"   
}


# This needs to be the Elasticsearch policy
resource "aws_s3_bucket_policy" "Elasticsearch_bucket" {
  bucket = "${aws_s3_bucket.Elasticsearch_bucket.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::my_tf_test_bucket/*",
      "Condition": {
         "IpAddress": {"aws:SourceIp": "8.8.8.8/32"}
      }
    }
  ]
}
POLICY
}