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
  description = "Zona padrão do provisionamento"
  type = string
  default = "us-central1-a"
}

variable "vpc_name" {
  type = string
  default = "ex-cap08-vpc"
}

variable "auto_create_subnetworks" {
  description = "Propriedade que diz se a rede é autogerenciada"
  type = bool
  default = false
}

variable "subnet_name" {
  description = "Nome da nossa subnet"
  type = string
  default = "subnet-01"
}

variable "ip_cidr_range" {
  description = "Define o ip da sub rede"
  type = string
  default = "10.240.1.0/24"
}

variable "boot_disk_image" {
  description = "Qual a imagem usada para gerar a instancia"
  type = string
  default = "debian-cloud/debian-12"
}

# nome_vm,nome_disk
variable "vms_details" {
  type = map(list(string))
  default = {
    vm1 = ["minha-vm1","disk1","disk2"]
    vm2 = ["minha-vm2","disk3","disk4"]
  }
}

# nome,tipo,tamanho
variable "disks_details" {
  type = map(list(string))
  default = {
    disk1 = ["disk1","pd-ssd","20"]
    disk2 = ["disk2","pd-ssd","20"]
    disk3 = ["disk3","pd-standard","40"]
    disk4 = ["disk4","pd-standard","40"]
  }
}

variable "machine_type" {
  description = "Tipo da maquina da instancia criada"
  type = string
  default = "e2-micro"
}

variable "allow_stopping_for_update" {
  type = bool
  default = true
}