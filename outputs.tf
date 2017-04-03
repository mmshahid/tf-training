output "public_dns" {
  value = ["${aws_instance.web.*.public_dns}"]
}

output "ip_of_web_0" {
  value = "${aws_instance.web.0.public_ip}"
}
