output "acm_certificate_arn" {
  description = "The acm certificate ARN."
  value       = module.aws_acm_cert.acm_certificate_arn
}
