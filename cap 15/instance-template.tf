resource "google_compute_instance_template" "default" {
  name = var.instance_template_name
  description = "Template para criação das instâncias"
  machine_type = var.machine_type
  
  tags = [ "webapps" ]
  
  disk {
    source_image = var.boot_image
    auto_delete = true
    boot = true
  }
  
  network_interface {
    network = google_compute_network.default.self_link

    access_config {
      
    }
  }

  metadata_startup_script = file(var.back_provision_script)
}