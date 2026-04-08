provider "google" {
  credentials = file("/var/lib/jenkins/gcp_keys/key.json")
  project = "terraform-lab5-489119"
  region  = "us-central1"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-f"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
  }
}
