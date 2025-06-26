variable "image" {
  type    = string
  default = "redis:7"
}

variable "container_name" {
  type    = string
  default = "redis"
}

variable "port" {
  type    = number
  default = 6379
}
