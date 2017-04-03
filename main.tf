#
# DO NOT DELETE THESE LINES!
#
# Your AMI ID is:
#
#     ami-1a14807a
#
# Your subnet ID is:
#
#     subnet-e0a4cb87
#
# Your security group ID is:
#
#     sg-6313eb18
#
# Your Identity is:
#
#     training-jb-spider
#

/*
module "example-module" {
  source = "/workstation/terraform/example-module"
  #name = "example"
}

provider "dnsimple" {
  token = "${var.dnsimple_token}"
  account = "${var.dnsimple_account}"
}
*/

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

resource "aws_instance" "web" {
  ami                    = "ami-1a14807a"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-e0a4cb87"
  vpc_security_group_ids = ["sg-6313eb18"]
  count = "${var.aws_instance_count}"

  tags {
    Identity = "training-jb-spider"
    Name     = "Shahid-Terraform-Test_${count.index+1}_of_${var.aws_instance_count}"
    Account  = "DEV"
  }
}
 
