resource "google_compute_network" "vpc_network" {
  name = "my-custom-mode-network"
  project = var.project
  auto_create_subnetworks = false
  mtu = 1460
}
resource "google_compute_subnetwork" "default" {
  name = "my-custom-subnet"
  ip_cidr_range = "10.1.1.0/24"
  region = "us-central1"
  network = google_compute_network.vpc_network.id
}