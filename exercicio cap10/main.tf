module "vpc" {
  source = "git@github.com:lucaNeves/gcp-network.git?ref=v0.1.0"
  name = "vpc-modulo-remoto"
  description = "vpc criada com um modulo remoto"
}

module "subnet" {
  source = "git@github.com:lucaNeves/gcp-subnetworks.git?ref=v0.1.0"
  name = "subnet-modulo-remoto"
  ip_cidr_range = "192.168.10.0/28"
  network = "vpc-modulo-remoto"
  depends_on = [ module.vpc ]
}

module "disk" {
  source = "git@github.com:lucaNeves/gcp-disk.git?ref=v0.1.0"
  name = "disco-modulo-remoto"
  type = "pd-ssd"
  size = 5
  zone = var.default_zone
  description = "Disco criado com o módulo remoto"
}