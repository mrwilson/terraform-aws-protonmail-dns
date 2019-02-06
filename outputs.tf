output "mx_record" {
  value = "${aws_route53_record.mx.id}"
}

output "dmarc_record" {
  value = "${aws_route53_record.dmarc.id}"
}

output "dkim_record" {
  value = "${aws_route53_record.dkim.id}"
}