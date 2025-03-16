# Start a container
resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx.image_id
  ports {
    internal = var.docker_ports.internal
    external = var.docker_ports.external
  }
}

# Find the latest NGINX image.
resource "docker_image" "nginx" {
  name = var.nginx_image
}