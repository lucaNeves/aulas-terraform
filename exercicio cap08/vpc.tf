resource "google_compute_network" "ex-cap08-vpc" {
  name = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnetworks
}