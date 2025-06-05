# Mostre os seguintes outputs:
# • subnets_ips
# • subnets_names
# • subnets_regions
# • subnets_self_links

output "subnets_ips" {
  value = module.modulo-rede-tf-chapter11-ex3.subnets_ips
}

output "subnets_names" {
  value = module.modulo-rede-tf-chapter11-ex3.subnets_names
}

output "subnets_regions" {
  value = module.modulo-rede-tf-chapter11-ex3.subnets_regions
}

output "subnets_self_links" {
  value = module.modulo-rede-tf-chapter11-ex3.subnets_self_links
}