terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "5.1.0"
    }
  }
}
provider "google" {
    project = "terraform-p-382808"
    region = "us-central"
    zone = "us-central1-a"
    credentials = "terraform-p-382808-439ee5e4ea4f.json"
  
}