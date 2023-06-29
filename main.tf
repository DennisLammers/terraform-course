provider "google" {
  project     = var.project
  credentials = file(var.credentials_file)
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "test" {
  name                      = var.vm_params.name
  machine_type              = var.vm_params.machine_type
  zone                      = var.vm_params.zone
  allow_stopping_for_update = var.vm_params.allow_stopping_for_update

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = "default"
    access_config {
      //
    }
  }
}
