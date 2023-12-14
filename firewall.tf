resource "google_compute_firewall" "default" {
    name = "test-firewall1"
    network = google_compute_network.vpc_network.id
    allow {
      protocol = "icmp"

    }

    allow {
      protocol = "tcp"
      ports = ["80","8080"]

    }
    source_tags = ["web"]
}