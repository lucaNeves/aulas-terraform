output "static_ip_public" {
  description = "Meu ip publico"
  value = google_compute_address.static_ip.address
}

output "vm_name" {
  description = "nome da vm"
  value = google_compute_instance.vm.name
}
output "disk_name" {
  value = google_compute_disk.vm-disk.name
}

output "disk_type" {
  value = google_compute_disk.vm-disk.type
}