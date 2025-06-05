# Mostre os seguintes outputs:
# • network_name
# • network_self_link
# • project_id
# • Altere o nome do seu módulo para rede-tf-chapter11-ex1, faça o plano de execução
# e tente aplicar o código.
# • Destrua a infraestrutura

output "network_name" {
  value = module.rede-tf-chapter11.network_name
}

output "network_self_link" {
  value = module.rede-tf-chapter11.network_self_link
}

output "project_id" {
  value = module.rede-tf-chapter11.project_id
}