variable "environment" { default = "dev" }
resource "google_compute_instance" "default" {
  name = "test"
  machine_type = var.environment == "dev" ? var.machine_type["dev"] : var.machine_type["prod"]
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {
      
    }
  }
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
  
  scheduling {
    preemptible = true
    automatic_restart = false
  }
  

}

output "name" {  value = "${google_compute_instance.default.name}" }
output "machine_type" {  value = "${google_compute_instance.default.machine_type}" }
output "zone" {  value = "${google_compute_instance.default.zone}" }
output "ip_address" {  value = "${google_compute_instance.default.network_interface[0].network_ip}" }