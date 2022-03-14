variable "region" {
  description = "The region to provision resources in."
  type        = string
}

variable "domain_name" {
  description = "The domain name that the website will be nested under. Must be the root domain and not include www. (e.g. google.com)."
  type        = string
}

variable "name" {
  description = "Name for the acm certificate."
  type        = string
}

variable "tags" {
  description = "A map of tags for the resources."
  type        = map(string)
}
