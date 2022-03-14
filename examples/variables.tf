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

variable "owned_by" {
  description = "The name of the company who owns the resources."
  type        = string
}

variable "managed_by" {
  description = "The name of the tool that manages the resources."
  type        = string
}

variable "env" {
  description = "The environment in which the resources are provisioned."
  type        = string
}

variable "pipeline_id" {
  description = "The CI pipeline id number."
  type        = number
}
