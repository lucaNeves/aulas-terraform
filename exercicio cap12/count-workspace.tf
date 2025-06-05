resource "google_compute_instance" "count_workspace" {
  count = terraform.workspace == "dev" ? 3 : 0
  name = "${terraform.workspace}-vm-${count.index}"
  allow_stopping_for_update = var.allow_stopping_for_update
  zone = var.default_zone
  boot_disk {
    initialize_params {
      image = var.boot_image
    }
  }
  machine_type = var.machine_type
  network_interface {
    network = "default"
    access_config {
      
    }
  } 
}