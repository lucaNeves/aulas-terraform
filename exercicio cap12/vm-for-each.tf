locals {
  vm_types = {
    msql = "e2-small"
    nginx = "e2-medium"
    grafana = "e2-micro"
  }
}

module "vm" {
  source = "git@github.com:lucaNeves/gcp-instance.git"
  for_each = local.vm_types
  name = each.key
  allow_stopping_for_update = var.allow_stopping_for_update
  image = var.boot_image
  machine_type = each.value
  network = "default"
  zone = var.default_zone
}