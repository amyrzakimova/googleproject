resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    metadata_startup_script = file("wordpress.sh")
	
	metadata = {
		ssh-keys = "farrukh:${file("~/.ssh/id_rsa.pub")}"
	}



  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}