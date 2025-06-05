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

variable "vpc_name" {
  type = string
  default = "tf-vpc-chapter12"
}

variable "subnet_name" {
  type = string
  default = "tf-subnet-chapter12"
}