resource "google_compute_network" "tf-ex1" {
  name = "tf-ex1-network"
  auto_create_subnetworks = true
}