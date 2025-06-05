resource "google_compute_instance" "import" {
  name = "import"
  zone = var.default_zone
  machine_type = "e2-small"

  boot_disk {
    initialize_params {
      image = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-12-bookworm-v20250513"
    }
  }

  network_interface {
    network = "https://www.googleapis.com/compute/v1/projects/curso-terraform-459918/global/networks/vpc-import"
    subnetwork = "https://www.googleapis.com/compute/v1/projects/curso-terraform-459918/regions/us-central1/subnetworks/aula-vpc"
  }
}