#=========== main ==============
variable "cloud_id" {
  description = "The cloud ID"
  type        = string
}
variable "folder_id" {
  description = "The folder ID"
  type        = string
}
variable "default_zone" {
  description = "The default zone"
  type        = string
  default     = "ru-central1-b"
}

#=========== network ==============
variable "network_name" {
  description = "The name of main network"
  type        = string
}

#==================================
variable "ssh_key_private" {
  description = "Used private key"
  type        = string
  default     = "~/.ssh/id_rsa"
}

