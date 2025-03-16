variable "nginx_pod_name" {
  description = "Docker nginx pod name"
  type        = string
  default     = "nginx"
}

variable "nginx_image" {
  description = "Docker nginx image name and version"
  type        = string
  default     = "nginx:latest"
}

variable "docker_ports" {
  description = "Ports used by nginx pod"
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
