resource "docker_image" "this" {
  name = var.image
}

resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.name

  ports {
    internal = 9000
    external = var.native_port
  }

  ports {
    internal = 8123
    external = var.http_port
  }

  networks_advanced {
    name = "app"
  }

  volumes {
    host_path      = var.data_dir
    container_path = "/var/lib/clickhouse"
  }

  env = [
    "CLICKHOUSE_SKIP_USER_SETUP=1"
  ]

  restart = "unless-stopped"
}
