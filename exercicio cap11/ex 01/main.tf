# Crie um balanceador de carga.
# Nome do módulo: modulo-lb-tf-chapter11
# Região: us-central1
# Nome do balanceador de carga: lb-tf-chapter11
# Porta de serviço/service port: 80
# tags: allow-lb-web
# Rede/network: default

module "modulo-lb-tf-chapter11" {
  source  = "GoogleCloudPlatform/lb/google"
  version = "5.0.0"
  # insert the 3 required variables here
  name = var.name
  region = var.default_region
  service_port = var.service_port
  target_tags = var.target_tags
  network = var.network
  project = var.gcp_project
}