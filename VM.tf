resource "google_compute_instance" "webserver" {
    name = "webserver123"
    description = "this is 1st server"
    machine_type = "e2-medium"
    network_interface {
      network = "default"
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
