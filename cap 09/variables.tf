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
  default = "vpc-custom-name"
  description = "nome da vcp"
  type = string
}

variable "auto_create_subnetworks" {
  description = "criar subnets dinamicamente"
  type = bool
  default = false
}

variable "subnet_name" {
  description = "Nome da nossa subnet"
  type = string
  default = "subnet-01"
}

variable "subnet_range" {
  description = "Range dos ips's da subnet"
  type = string
  default = "10.0.1.0/24"
}

variable "disk_name" {
  description = "variavel do nome do disco"
  type = string
  default = "disk-name"
}

variable "type_disk" {
  description = "tipo do disco"
  type = string
  default = "pd-ssd"
}

variable "disk_size" {
  description = "tamanho do disco"
  type = number
  default = 10
}

variable "ip_publico" {
  type = string
  default = "ipv4-address"
}

variable "fw_name" {
  type = string
  default = "allow-ssh"
}

variable "allow_rule" {
  default = {
    protocol = "tcp"
    ports    = ["22", "80", "8080", "3980"]
  }
}

variable "source_ranges" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "vm_name" {
  type = string
  default = "vm-exemplo"
}

variable "machine_type" {
  type = string
  default = "e2-medium"
}

variable "boot_disk_image" {
  type = string
  default = "debian-cloud/debian-12"
}

variable "allow_stopping_for_update" {
  type = bool
  default = true
}