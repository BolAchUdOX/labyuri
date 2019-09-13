resource "google_compute_instance" "machine-gcloud {
  name         = "Trabalho final"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # Criando uma rede padrao
    network       = "default"
    access_config {
    }
  }
}


resource "google_storage_bucket" "image-store" {
  name     = "image-store-bucket"
  location = "EU"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}


