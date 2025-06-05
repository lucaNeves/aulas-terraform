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
  default = "rede-tf-chapter11"
}

variable "auto_create_subnetworks" {
  type = bool
  default = false
}

variable "subnets" {
  default = [ 
    {
        subnet_name = "subnet-tf-chapter11"
        subnet_ip = "192.168.0.0/16"
        subnet_region = "us-central1"
    }
  ]
}

variable "routing_mode" {
  type = string
  default = "REGIONAL"
}