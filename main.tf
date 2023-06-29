provider "google" {
  project = var.project
  credentials=file(var.credentials_file)
  region=var.region
  zone = var.zone
}

resource "google_compute_instance" "test" {
    name="test-instance"
    machine_type="e2-micro"
    zone="europe-west4-b"
    allow_stopping_for_update=true

    boot_disk {
        initialize_params {
            image="cos-cloud/cos-stable"
        }
    }

    network_interface {
        network="default"
        access_config {
            //
        }
    }
}