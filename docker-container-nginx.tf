# Start an nginx container
resource "docker_container" "nginx" {
  name  = var.nginx_pod_name
  image = var.nginx_image
  ports {
    internal = var.docker_ports[0].internal
    external = var.docker_ports[0].external
  }
}