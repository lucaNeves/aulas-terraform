resource "google_compute_network" "tf-ex2-network" {
  name = "tf-ex2-network"
  auto_create_subnetworks = true
}