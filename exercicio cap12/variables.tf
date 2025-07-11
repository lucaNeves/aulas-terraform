variable "gcp_project" {
  description = "Nome do projeto na GCP"
  type = string
  default = "curso-terraform-459918"
}

variable "default_region" {
  description = "Região padrão do provisionamento"
  type = string
  default = "us-central1"
}

variable "default_zone" {
  description = "zona padrão de provisionamento"
  type = string
  default = "us-central1-a"
}

variable "network_name" {
  type = string
  default = "vpc-ex-cap12"
}

variable "vm_name" {
  type = string
  default = "vm-ex-cap12"
}

variable "allow_stopping_for_update" {
  type = bool
  default = true
}

variable "boot_image" {
  type = string
  default = "debian-cloud/debian-12"
}

variable "machine_type" {
  type = string
  default = "e2-medium"
}