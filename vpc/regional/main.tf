resource "google_compute_network" "vpc_network" {
  name                    = "vpc-network"
  mtu                     = 1460
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}