variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_instance_count" {
  default = 2
}
variable "aws_region" {
  default = "us-west-2"
}

variable "dnsimple_token" {
  default = "testtoken"
}

variable "dnsimple_account" {
  default = "testshahid@testdnsimple.com"
}

variable "dnsimple_domain" {}
