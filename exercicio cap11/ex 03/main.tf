# • Crie uma rede VPC com rede 10.10.10.0/23
# • Nome do seu módulo: modulo-rede-tf-chapter11-ex3
# • Nome da rede: rede-tf-chapter11-ex3
# • Nome da subnet: subnet-tf-chapter11-ex3
# • Região: us-west1
# • Modo de roteamento/routing mode: global
# • Project ID: pegue no painel do GCP
# Mostre os seguintes outputs:
# • subnets_ips
# • subnets_names
# • subnets_regions
# • subnets_self_links
# • Altere o nome do seu módulo para rede-tf-chapter11, faça o plano de execução e
# tente aplicar o código.
# • Destrua a infraestrutura

module "modulo-rede-tf-chapter11-ex3" {
  source  = "terraform-google-modules/network/google"
  version = "11.0.0"
  # insert the 3 required variables here
  network_name = var.network_name
  project_id = var.gcp_project
  subnets = var.subnets
  routing_mode = var.routing_mode

}