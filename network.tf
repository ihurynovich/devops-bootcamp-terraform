resource "google_compute_network" "cmtr_vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "cmtr_subnet_central" {
  name          = var.subnet_central_name
  ip_cidr_range = var.subnet_central_cidr
  region        = var.subnet_central_region
  network       = google_compute_network.cmtr_vpc.id
}

resource "google_compute_subnetwork" "cmtr_subnet_east" {
  name          = var.subnet_east_name
  ip_cidr_range = var.subnet_east_cidr
  region        = var.subnet_east_region
  network       = google_compute_network.cmtr_vpc.id
}
