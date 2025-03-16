variable "docker_ports" {
  description = "Port Number used by NGINX pod"
  type        = list(object({
    internal  = number
    external  = number
  }))
  default = [
    {
      internal = 80
      external = 8080
    }
  ]
}

variable "nginx_image" {
  description = "NGINX image name and version"
  type        = string
  default     = "nginx:latest"
}
