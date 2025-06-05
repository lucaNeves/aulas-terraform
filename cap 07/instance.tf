resource "google_compute_address" "static_ip" {
  name = "ipv4-address"
}

resource "google_compute_firewall" "allow_ssh_ex"  {
    name = "allow-ssh"
    network = google_compute_network.vpc_network.name

    allow {
        protocol = "tcp"
        ports = [ "22", "80" ]
    }
    source_ranges = [ "0.0.0.0/0" ]
}

resource "google_compute_instance" "vm" {
    name = "vm-instance-exemplo"
    machine_type = "e2-micro"
    zone = "us-central1-a"

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }
    network_interface {
      network = google_compute_network.vpc_network.self_link
      subnetwork = google_compute_subnetwork.subnet.id
      access_config {
        nat_ip = google_compute_address.static_ip.address
      }
    }

    metadata = {
      ssh-keys = "luizn:${file("C:/Users/luizn/.ssh/id_rsa.pub")}"
    }

    # metadata_startup_script = <<-EOT
    #   #!/bin/bash

    #   sudo apt update
    #   sudo apt install nginx -y
    # EOT

    metadata_startup_script = "sudo apt update; sudo apt install nginx -y"

    depends_on = [ google_compute_address.static_ip ]
  
}


# resource "null_resource" "install_nginx"{

#   connection {
#     type     = "ssh"
#     user     = "luizn"
#     private_key = file("C:/Users/luizn/.ssh/id_rsa")
#     host     = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "sudo apt update",
#       "sudo apt install nginx -y"
#     ]
#   }
# }