output "acm_certificate_arn" {
  description = "The ARN of the provisioned acm certificate."
  value       = aws_acm_certificate_validation.validation.certificate_arn
}
