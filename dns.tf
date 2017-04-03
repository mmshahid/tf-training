/*
provider "dnsimple" {
  token = "${var.dnsimple_token}"
  email = "${var.dnsimple_account}"
}

resource "dnsimple_record" "arecord_for_web1" {
  domain = "${var.dnsimple_domain}"
  name   = "name-for-our-A-record"
  value  = "${aws_instance.web.0.public_ip}"
  type   = "A"
  ttl    = 3600
}
*/
