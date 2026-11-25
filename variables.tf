variable "location" {
  type    = string
  default = "North Europe"
}

variable "environment" {
  type        = string
  description = "The env type"
  default     = "staging"
}
