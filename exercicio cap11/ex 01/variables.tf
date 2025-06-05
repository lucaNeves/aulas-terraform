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

variable "name" {
  type = string
  default = "lb-tf-chapter11"
}

variable "service_port" {
  type = number
  default = 80
}

variable "target_tags" {
  type = list(string)
  default = [ "allow-lb-web" ]
}

variable "network" {
  type = string
  default = "default"
}