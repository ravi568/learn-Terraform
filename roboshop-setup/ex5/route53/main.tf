resource "aws_route53_record" "record" {
  zone_id = "Z04953962FKYDA691J60N"
  name    = "${var.component}-dev.kalluriravidevops71.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}

