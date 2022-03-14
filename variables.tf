variable "domain_name" {
  description = "The domain name that the website will be nested under. Must be the root domain and not include www. (e.g. google.com)."
  type        = string
  default     = ""
}

variable "name" {
  description = "Name for the acm certificate."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags for the resources."
  type        = map(string)
  default     = {}
}
