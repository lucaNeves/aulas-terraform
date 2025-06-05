resource "google_compute_disk" "disk" {
  for_each = var.disks_details
  name = each.value[0]
  type = each.value[1]
  zone = var.default_zone
  size = each.value[2]
}