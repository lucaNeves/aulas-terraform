resource "google_compute_network" "tf-chapter6" {
  name = "tf-chapter6-network"
  auto_create_subnetworks = true
}