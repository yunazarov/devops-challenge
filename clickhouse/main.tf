resource "docker_image" "this" {
  name = var.image
}

resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.latest

  ports {
    internal = 9000
    external = var.native_port
  }

  ports {
    internal = 8123
    external = var.http_port
  }

  volumes {
    host_path      = "${path.module}/data"
    container_path = "/var/lib/clickhouse"
  }

  terraform {
    backend "local" {
      path = "/opt/terraform-states/clickhouse.tfstate"
    }
  }


  restart = "unless-stopped"
}
