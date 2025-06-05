# Crie uma rede VPC com rede 192.168.0.0/16
# • Nome do seu módulo: modulo-tf-chapter11
# • Nome da rede: rede-tf-chapter11
# • Nome da subnet: subnet-tf-chapter11
# • Região: us-central1
# • Modo de roteamento/routing mode: regional
# • Project ID: pegue no painel do GCP
# Mostre os seguintes outputs:
# • network_name
# • network_self_link
# • project_id
# • Altere o nome do seu módulo para rede-tf-chapter11-ex1, faça o plano de execução
# e tente aplicar o código.
# • Destrua a infraestrutura

module "rede-tf-chapter11" {
  source  = "terraform-google-modules/network/google"
  version = "11.0.0"
  # insert the 3 required variables here
  network_name = var.network_name
  project_id = var.gcp_project
  auto_create_subnetworks = var.auto_create_subnetworks
  subnets = var.subnets
  routing_mode = var.routing_mode

}