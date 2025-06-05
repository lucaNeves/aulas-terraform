resource "google_compute_network" "tf-ex-cap07-vpc" {
  name = "tf-ex-cap07-vpc"
  auto_create_subnetworks = true
}