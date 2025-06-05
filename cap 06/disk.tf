resource "google_compute_disk" "tf-chapter6-disk" {
  name = "tf-chapter6-db-disk"
  type = "pd-ssd"
  zone = "us-central1-a"
  size = 25
}