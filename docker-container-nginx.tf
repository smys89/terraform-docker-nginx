# Start a container
resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx.image_id
  ports {
    internal = var.port_no
    external = var.port_no
  }
}

# Find the latest NGINX image.
resource "docker_image" "nginx" {
  name = var.nginx_image
}

variable "port_no" {
    type = string
}

variable "nginx_image" {
    type = string
}