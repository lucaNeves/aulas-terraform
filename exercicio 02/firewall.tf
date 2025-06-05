resource "google_compute_firewall" "tf-ex2-fw"{
    name = "tf-ex2-fw"
    network = "tf-ex2-network"


    allow {
      protocol = "tcp"
      ports = ["22"]
    }

    source_ranges = ["0.0.0.0/0"]

}