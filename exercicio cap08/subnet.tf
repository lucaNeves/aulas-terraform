resource "google_compute_subnetwork" "subnet" {
    name = var.subnet_name
    ip_cidr_range = var.ip_cidr_range
    region = var.default_region
    network = google_compute_network.ex-cap08-vpc.id

    depends_on = [ google_compute_network.ex-cap08-vpc ]
}