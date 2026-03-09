resource "google_compute_network" "cmtr_vpc" {
  name                    = "cmtr-06d6a4ae-01-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "cmtr_subnet_central" {
  name          = "cmtr-06d6a4ae-01-subnet-central"
  ip_cidr_range = "10.10.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.cmtr_vpc.id
}

resource "google_compute_subnetwork" "cmtr_subnet_east" {
  name          = "cmtr-06d6a4ae-01-subnet-east"
  ip_cidr_range = "10.10.3.0/24"
  region        = "us-east1"
  network       = google_compute_network.cmtr_vpc.id
}
