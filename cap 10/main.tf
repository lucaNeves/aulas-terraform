module "network" {
  source = "./gcp-network"
  name = var.vpc_name
  description = "rede do cap 10."
}

module "subnetwork" {
  source = "./gcp-subnet"
  name_subnet = var.subnet_name
  subnet_range = "192.168.10.0/24"
  network_to_subnet = var.vpc_name

  depends_on = [ module.network ]
}

module "ip_externo" {
  source = "./gcp-public-ip"
  name = var.ip_publico
}

module "disk" {
  source = "./gcp-disk"
  name = "disco-modulo"
  type = "pd-ssd"
  size = 20
  zone = var.default_zone
  description = "teste"
}

module "firewall" {
  source = "./gcp-firewall"
  name = var.fw_name
  source_ranges = "0.0.0.0/0"
  network = var.vpc_name

  depends_on = [ module.network ]
}

module "vm-instance" {
  source = "./gcp-instance"
  name = var.vm_name
  machine_type = var.machine_type
  zone = var.default_zone
  allow_stopping_for_update = var.allow_stopping_for_update
  image = var.boot_disk_image
  network = var.vpc_name
  subnet = var.subnet_name
  nat_ip = module.ip_externo.ip_externo

  depends_on = [ module.ip_externo, module.network, module.subnetwork ]
}