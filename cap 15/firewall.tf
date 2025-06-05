resource "google_compute_firewall" "allow_default_ports" {
  name = "${var.network_name}-allow-default-ports"
  network = google_compute_network.default.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = [ "22", "80", "443" ]
  }

  source_ranges = [ "0.0.0.0/0" ]

  target_tags = [ "webapps" ]
}