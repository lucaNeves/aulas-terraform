resource "google_compute_subnetwork" "this" {
  name = var.name_subnet
  ip_cidr_range = var.subnet_range
  network = var.network_to_subnet
}