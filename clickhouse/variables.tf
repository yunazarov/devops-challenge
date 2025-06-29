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

# на хосте с проектом нужном создать директорию и дать права пользователя раннера
variable "data_dir" {
  type    = string
  default = "/opt/devops-challenge/clickhouse/data"
}