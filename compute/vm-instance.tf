resource "google_compute_instance" "myinstance" {
    name = "myinstance"
    project = "terraform-p-382808"
    machine_type = "e2-midium"
    network_interface {
      network = "default"
     # subnetwork = google_compute_subnetwork.default.id
    }
    zone = "us-central1"
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
        labels = {
            my_label = "debian-11"
        }
      }
    }
    }