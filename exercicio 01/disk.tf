resource "google_compute_disk" "tf-ex1" {
  name = "tf-ex1-disk"
  size = 30
  type = "pd-standard"
  zone = "us-central1-a"
}