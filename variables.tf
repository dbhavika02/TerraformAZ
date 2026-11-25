variable "location" {
  type    = string
  default = "North Europe"
}

# variable "environment" {
#   type        = string
#   description = "The env type"
#   default     = "staging"
# }

variable "storage_disk" {
  type        = number
  description = "the disk size"
  default     = 80
}

variable "is_delete" {
  type        = bool
  description = "the default behavior to os disk upon vm termination "
  default     = true
}



