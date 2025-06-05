resource "google_storage_bucket" "github-actions-lc" {
  name = "github-actions-lc"
  force_destroy = true
  location = var.default_region
}