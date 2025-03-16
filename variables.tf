variable "port_no" {
  description = "Port Number used by NGINX pod"
  type        = string
  default     = "80"
}

variable "nginx_image" {
  description = "NGINX image name and version"
  type        = string
  default     = "nginx:latest"
}
