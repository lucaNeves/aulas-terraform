resource "google_compute_disk" "vm-disk" {
  name = var.disk_name
  type = var.type_disk
  zone = var.default_zone
  size = var.disk_size
}