# terraform-aws-protonmail-dns

Terraform module to deploy DNS records for ProtonMail custom domains to AWS Route53

## How to use this Module

You can use this module from the [Terraform Registry](https://registry.terraform.io/modules/mrwilson/protonmail-dns/aws/)

```terraform
module "protonmail-dns" {
  source   = "mrwilson/protonmail-dns/aws"
  
  version  = "1.0.0"

  zone_id  = "ZYX-my-route53-zone-id"
  dkim_key = "GRsYQmGafikR43ZyhIYB9rqtgkgM9/RTpdP1Dx4nukY=" # example, not real!
}
```