resource "docker_image" "this" {
  name = var.image
}

resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.name

  command = ["redis-server", "--appendonly", "yes"]

  ports {
    internal = 6379
    external = var.port
  }

  networks_advanced {
    name = "app"
  }

  volumes {
    host_path      = var.data_dir
    container_path = "/data"
  }

  restart = "unless-stopped"
}
