variable "gcp_project" {
  description = "Nome do projeto na GCP"
  type = string
  default = "curso-terraform-459918"
}

variable "default_region" {
  description = "Região padrão do provisionamento"
  type = string
  default = "us-west1"
}

variable "default_zone" {
  description = "zona padrão de provisionamento"
  type = string
  default = "us-west1-a"
}

variable "network_name" {
  type = string
  default = "rede-tf-chapter11-ex3"
}

variable "subnets" {
  default = [ 
    {
        subnet_name = "subnet-tf-chapter11-ex3"
        subnet_ip = "10.10.10.0/23"
        subnet_region = "us-west1"
    }
  ]
}

variable "routing_mode" {
  type = string
  default = "GLOBAL"
}