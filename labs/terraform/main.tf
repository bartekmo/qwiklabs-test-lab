resource "google_compute_network" "test" {
  name = "test-vpc"
  auto_create_subnetworks = false
}
