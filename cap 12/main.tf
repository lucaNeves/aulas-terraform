resource "google_compute_network" "network" {
  auto_create_subnetworks = false
  description = "testando workspace"
  name = "${terraform.workspace}-${var.vpc_name}"
}

module "subnet" {
  source = "git@github.com:lucaNeves/gcp-subnetworks.git?ref=v0.1.0"
  name = "${terraform.workspace}-${var.subnet_name}"
  ip_cidr_range = "192.168.10.0/28"
  network = "${terraform.workspace}-${var.vpc_name}"

  depends_on = [ google_compute_network.network ]
}