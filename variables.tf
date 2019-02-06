variable "zone_id"      {
  type = "string"
  description = "Identifier represting an AWS Route53 Hosted Zone."
}

variable "dkim_key"     {
  type = "string"
  description = "Public key to verify that your emails have been sent from ProtonMail's servers and not spoofed."
}

variable "dmarc_action" {
  type = "string"
  description = "Action to take if an email fails DKIM or SPF e.g. none, quarantine, reject"
  default = "none"
}

variable "additional_dmarc_flags" {
  type = "list"
  description = "Additional DMARC flags e.g. rua=mailto:you@email.com"
  default = []
}