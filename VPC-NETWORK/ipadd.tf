
resource "google_compute_subnetwork" "test_subnet" {
  name = my_subnet
  ip_cidr_range = "192.168.0.0/24"
  region = "us-central1"
  network = google_compute_network.vpc_network.id
}

resource "google_compute_address" "internal_address" {
    name = "my_internal-address"
    subnetwork = google_compute_subnetwork.test_subnet.id
  
}