resource "google_compute_url_map" "default" {
  name = "url-map-target-proxy"
  default_service = google_compute_backend_service.default.self_link
}

resource "google_compute_target_http_proxy" "default" {
  name = "teste-proxy"
  url_map = google_compute_url_map.default.self_link
}

resource "google_compute_global_forwarding_rule" "default" {
  name = "global-rule"
  target = google_compute_target_http_proxy.default.self_link
  port_range = 80
}
