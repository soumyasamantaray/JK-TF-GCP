resource "google_compute_instance" "webserver" {
    name = "webserver123"
    description = "this is 1st server"
    machine_type = "e2-micro"
    network_interface {
      network = google_compute_network.vpc_network.id
      subnetwork = google_compute_subnetwork.default.id
    }
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
        labels = {
            my_label = "debian"
        }
      }
    }
  
}