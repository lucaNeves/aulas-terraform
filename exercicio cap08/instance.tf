resource "google_compute_instance" "vm" {
  for_each = var.vms_details
  name = each.value[0]
  machine_type = var.machine_type
  zone = var.default_zone
  allow_stopping_for_update = var.allow_stopping_for_update

  boot_disk {
    initialize_params {
        image = var.boot_disk_image
    }
  }

  network_interface {
    network = google_compute_network.ex-cap08-vpc.self_link
    subnetwork = google_compute_subnetwork.subnet.name
  }

  attached_disk {
    source = each.value[1]
  }
  attached_disk {
    source = each.value[2]
  }

  depends_on = [ google_compute_disk.disk, google_compute_network.ex-cap08-vpc ]
}