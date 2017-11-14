# primary domain
resource "aws_route53_zone" "main" {
  name = "${var.aws_r53_primary_domain}"
}

# primary domain - outputs
output "AWS primary domain ID" {
  depends_on = ["aws_route53_zone.main"]
  value = "${aws_route53_zone.main.id}"
}

output "AWS primary domain NS servers list" {
  depends_on = ["aws_route53_zone.main"]
  value = "${join(", ", aws_route53_zone.main.name_servers)}"
}

# primary domain - A records
resource "aws_route53_record" "aws_r53_primary_domain_a_records" {
  depends_on = ["aws_route53_zone.main"]
  count      = "${length(keys(var.aws_r53_primary_domain_a_records))}"
  zone_id    = "${aws_route53_zone.main.zone_id}"
  name       = "${element(keys(var.aws_r53_primary_domain_a_records), count.index )}"
  type       = "A"
  ttl        = "${var.aws_r53_default_a_ttl}"
  records    = [ "${element(values(var.aws_r53_primary_domain_a_records), count.index)}" ]
}

# primary domain - CNAME records
resource "aws_route53_record" "aws_r53_primary_domain_cname_records" {
  depends_on = ["aws_route53_zone.main"]
  count      = "${length(keys(var.aws_r53_primary_domain_cname_records))}"
  zone_id    = "${aws_route53_zone.main.zone_id}"
  name       = "${element(keys(var.aws_r53_primary_domain_cname_records), count.index )}"
  type       = "CNAME"
  ttl        = "${var.aws_r53_default_cname_ttl}"
  records    = [ "${element(values(var.aws_r53_primary_domain_cname_records), count.index)}" ]
}

# primary domain - MX records
resource "aws_route53_record" "aws_r53_primary_domain_mx_records" {
  depends_on = ["aws_route53_zone.main"]
  count      = "${length(keys(var.aws_r53_primary_domain_mx_records))}"
  zone_id    = "${aws_route53_zone.main.zone_id}"
  name       = "${element(keys(var.aws_r53_primary_domain_mx_records), count.index )}"
  type       = "MX"
  ttl        = "${var.aws_r53_default_mx_ttl}"
  records    = [ "${element(values(var.aws_r53_primary_domain_mx_records), count.index)}" ]
}

# primary domain - TXT records
resource "aws_route53_record" "aws_r53_primary_domain_txt_records" {
  depends_on = ["aws_route53_zone.main"]
  count      = "${length(keys(var.aws_r53_primary_domain_txt_records))}"
  zone_id    = "${aws_route53_zone.main.zone_id}"
  name       = "${element(keys(var.aws_r53_primary_domain_txt_records), count.index )}"
  type       = "TXT"
  ttl        = "${var.aws_r53_default_txt_ttl}"
  records    = [ "${element(values(var.aws_r53_primary_domain_txt_records), count.index)}" ]
}
