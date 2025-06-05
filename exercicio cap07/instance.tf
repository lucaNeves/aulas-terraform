resource "google_compute_instance" "vm-ex-cap07" {
  name = "vm-${count.index}"
  machine_type = "e2-micro"
  zone = "us-central1-a"
  count = 2

  boot_disk {
    initialize_params {
        image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = google_compute_network.tf-ex-cap07-vpc.self_link
  }
}