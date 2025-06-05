resource "google_compute_instance" "tf-ex2" {
    name = "tf-ex2"
    machine_type = "e2-medium"
    zone = "us-central1-a"
    allow_stopping_for_update = true

    tags = ["terraform", "linux"]

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }

    network_interface {
      network = "tf-ex2-network"
    }

}
