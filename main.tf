provider "google" {
   credentials = file("gcp-creds.json")
   project     = "dauntless-glow-338711"
   region      = "us-weast1"
   zone = "us-weast1-b"
} 
  
resource "google_compute_instance" "my_server" {
  name = "my-gcp-server"
  machine_type = "f1-micro"
boot_disk {
  initialize_params {
      image = "debian-cloud/debian-9"
  }
}
natwork_interface {
    network = "default"
}
}




