variable "image" {
  type    = string
  default = "postgres:15"
}

variable "container_name" {
  type    = string
  default = "postgres"
}

variable "port" {
  type    = number
  default = 5432
}

variable "db" {
  type    = string
  default = "app"
}

variable "user" {
  type    = string
  default = "postgres"
}

variable "password" {
  type    = string
  default = "postgres"
}
