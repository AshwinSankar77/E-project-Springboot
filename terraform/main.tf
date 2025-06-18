provider "null" {}
resource "null_resource" "start_services" {
  provisioner "local-exec" {
    command = "bash ../scripts/start-all.sh"
  }
}