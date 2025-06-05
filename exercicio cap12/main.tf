# module "network" {
#   source = "git@github.com:lucaNeves/gcp-network.git"
#   name = "${terraform.workspace}-${var.network_name}"
#   description = "Rede criada para o exercico do cap.12"
# }

# module "vm" {
#   source = "git@github.com:lucaNeves/gcp-instance.git"
#   count = length(local.vm_list_names)
#   name = "${terraform.workspace}-${local.vm_list_names[count.index]}"
#   allow_stopping_for_update = var.allow_stopping_for_update
#   image = var.boot_image
#   machine_type = var.machine_type
#   network = module.network.name
#   zone = var.default_zone

#   depends_on = [ module.network ]
# }

# locals {
#   vm_list_names = ["mysql", "nginx", "grafana", "jenkins"]
# }