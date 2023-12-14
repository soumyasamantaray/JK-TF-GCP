#used for packet monitoring in VPC network
/*terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.66.0"
    }
  }
}
provider "google" {
  project = "terraform-p-382808"
 # region = "us-central1-a"
  zone = "us-central1-a"
  credentials = "../terraform-p-382808-439ee5e4ea4f.json"
}
resource "google_compute_packet_mirroring" "packet_monitoring" {
    name = "monitoring-purpose"
    description = "nothing"
    network {
      url = google_compute_network.vpc_network.id
    }
    collector_ilb {
      url = google_compute_network.vpc_network.id
    }
    mirrored_resources {
      instances {
    #    source = "Terraform\practice(GCP-ALL)"
        url = "../google_compute_instance.webserver.id"
      }
    }
    filter {
      ip_protocols = ["tcp"]
      cidr_ranges = ["0.0.0.0/0"]
      direction = "BOTH"
    }
}
*/