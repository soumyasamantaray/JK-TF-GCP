resource "google_compute_firewall" "default" {
    name = "t-firewall"
    network = "default"
    allow {
      protocol = "icmp"

    }

    allow {
      protocol = "tcp"
      ports = ["80","8080"]

    }
    source_tags = ["web"]
}