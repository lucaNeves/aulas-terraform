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
  default = "vpc-projeto"
}

variable "vm_name" {
  type = string
  default = "vm-projeto"
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

variable "back_provision_script" {
  type = string
  default = "./script/infra-final.sh"
}

variable "group_regions" {
  type = list(string)
  default = [ "us-central1", "asia-east1" ]
}

variable "us-zones" {
  type = list(string)
  default = [ "us-central1-a", "us-central1-b" ]
}

variable "asia_zones" {
  type = list(string)
  default = [ "asia-east1-a" ]
}

variable "lb_group_sizes" {
  type = list(number)
  default = [ 0, 2 ]
}

variable "instance_template_name" {
  type = string
  default = "appserver-template"
}

variable "us_instance_group_name" {
  type = string
  default = "appserver-igm-us"
}

variable "asia_instance_group_name" {
  type = string
  default = "appserver-igm-asia"
}