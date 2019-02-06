resource "aws_route53_record" "mx" {
  name = ""
  type = "MX"
  zone_id = "${var.zone_id}"
  records = [
    "10 mail.protonmail.ch",
    "20 mailsec.protonmail.ch"
  ]
}

resource "aws_route53_record" "dkim"{
  name = "protonmail._domainkey"
  type = "TXT"

  ttl = 60

  zone_id = "${var.zone_id}"

  records = [
    "v=DKIM1; k=rsa; p=${var.dkim_key}"
  ]

}

resource "aws_route53_record" "dmarc" {
  name = "_dmarc"
  type = "TXT"

  ttl = 60

  zone_id = "${var.zone_id}"

  records = [
    "v=DMARC1; p=${var.dmarc_action}; ${join(";", var.additional_dmarc_flags)}"
  ]
}