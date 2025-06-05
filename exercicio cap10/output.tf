output "vpc_self_link" {
  value = module.vpc.self_link
}
output "ip_publico" {
  value = module.vpc.gateway_ipv4
}

output "name_disk" {
  value = module.disk.disk_name
}

output "size_disk" {
  value = module.disk.disk_size
}