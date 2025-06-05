resource "google_compute_firewall" "allow-basic-ports" {
  name = "allow-basic-ports"
  network = google_compute_network.tf-ex-cap07-vpc.name

  allow {
    protocol = "tcp"
    ports = [ "80","8080","22","3389" ]
  }

  allow {
    protocol = "udp"
    ports = [ "3389" ]
  }

  source_ranges = [ "0.0.0.0/0" ]
}