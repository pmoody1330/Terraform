variable "vpc_cidr" {
  description = "Choose cidr for vpc"
  default     = "10.0.0.0/16"
}

variable "region" {
  description = "Choose your AWS region"
  type        = string
  default     = "ap-southeast-2"
}
