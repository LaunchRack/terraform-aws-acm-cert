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

variable "owned_by" {
  description = "The name of the company who owns the resources."
  type        = string
  default     = ""
}

variable "managed_by" {
  description = "The name of the tool that manages the resources."
  type        = string
  default     = ""
}

variable "env" {
  description = "The environment in which the resources are provisioned."
  type        = string
  default     = ""
}

variable "pipeline_id" {
  description = "The CI pipeline id number."
  type        = number
}

variable "tags" {
  description = "Additional tags."
  type        = map(string)
  default     = {}
}
