variable "bucket_name" {
    type = string
    description = "Bucket name; adds the prefix, invocadev or invoca, based on the account."
}

variable "acl_value" {
    default = "private"
}

variable "region" {
    default = "us-east-1"
}

variable "team_name" {
    type = string
    default = "app-sre"
    description = "Team name, e.g. app-sre, infra-sre, ..."
}

variable "additional_arns" {
  type = list
  default = []
  description = "The user may supply a list of additional user arns to the policy."
}

variable "namespace" {
    type = string
    description = "This is the namespace that the elasticsearch bucket is backing up"
}

variable "aws_region" {
    type = string
    default = "us-east-1"
}
