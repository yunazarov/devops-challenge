variable "image" {
  type    = string
  default = "clickhouse/clickhouse-server:latest"
}

variable "container_name" {
  type    = string
  default = "clickhouse"
}

variable "http_port" {
  type    = number
  default = 8123
}

variable "native_port" {
  type    = number
  default = 9000
}
