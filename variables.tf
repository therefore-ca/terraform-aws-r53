variable "aws_access_key" {
  type        = "string"
  description = "AWS access key"
}

variable "aws_secret_key" {
  type        = "string"
  description = "AWS secret key"
}

variable "aws_region" {
  type        = "string"
  description = "AWS region"
}

variable "aws_r53_primary_domain" {
  type        = "string"
  description = "Primary domain"
}

variable "aws_r53_default_a_ttl" {
  type        = "string"
  description = "Default TTL for A records"
}

variable "aws_r53_default_cname_ttl" {
  type        = "string"
  description = "Default TTL for CNAME records"
}

variable "aws_r53_default_mx_ttl" {
  type        = "string"
  description = "Default TTL for MX records"
}

variable "aws_r53_default_txt_ttl" {
  type        = "string"
  description = "Default TTL for TXT records"
}

variable "aws_r53_primary_domain_a_records" {
  type        = "map"
  description = "List of A records"
}

variable "aws_r53_primary_domain_cname_records" {
  type        = "map"
  description = "List of CNAME records"
}

variable "aws_r53_primary_domain_mx_records" {
  type        = "map"
  description = "List of MX records"
}

variable "aws_r53_primary_domain_txt_records" {
  type        = "map"
  description = "List of TXT records"
}