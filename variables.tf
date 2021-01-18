variable "vpc_cidr" {
  description = "Choose cidr for vpc"
  default     = "10.0.0.0/16"
}

variable "region" {
  description = "Choose your AWS region"
  type        = string
  default     = "us-east-1"
}

variable "nat_amis" {
  type = map(string)
  default = {
    #20210108 images from Ubuntu - AMB not arm
    us-east-1 = "ami-011899242bb902164"
    us-east-2 = "ami-07d5003620a5450ee"
  }
}
