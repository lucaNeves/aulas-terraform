resource "google_compute_instance" "tf-ex1" {
  name = "tf-ex1"
  machine_type = "n2-standard-2"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
  }
}