# module "vm" {
#   source = "./gcp-instance"
#   allow_stopping_for_update = var.allow_stopping_for_update
#   image = var.boot_image
#   machine_type = var.machine_type
#   name = var.vm_name
#   network = "default"
#   zone = var.default_zone
# }