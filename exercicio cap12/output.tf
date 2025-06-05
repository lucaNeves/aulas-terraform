# output "network_self_link" {
#   value = module.network.self_link
# }

# output "network_gateway_ipv4" {
#   value = module.network.gateway_ipv4
# }

# output "network" {
#   value = module.network.network_id
# }

# output "network_name" {
#   value = module.network.name
# }

# output "vm_name" {
#   value = module.vm.*.name
# }

# output "vm_machine_type" {
#   value = module.vm.*.machine_type
# }

# output "vm_instance_id" {
#   value = module.vm.*.instance_id
# }

# output "vm_self_link" {
#   value = module.vm.*.self_link
# }

# output "vm_network_interface" {
#   value = module.vm.*.network_interface
# }

output "vm_for_each_names" {
  value = [for i in module.vm : i.name]
}

output "count_workspace" {
    value = terraform.workspace == "dev" ? [for i in google_compute_instance.count_workspace : i.name] : []
  
}