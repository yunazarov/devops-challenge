resource "docker_image" "this" {
  name = var.image
}

resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.name

  env = [
    "POSTGRES_DB=${var.db}",
    "POSTGRES_USER=${var.user}",
    "POSTGRES_PASSWORD=${var.password}"
  ]

  ports {
    internal = 5432
    external = var.port
  }

  networks_advanced {
    name = "app"
  }

  volumes {
    host_path      = abspath("${path.module}/init.sql")
    container_path = "/docker-entrypoint-initdb.d/init.sql"
  }

  volumes {
    host_path      = var.data_dir
    container_path = "/var/lib/postgresql/data"
  }

  restart = "unless-stopped"
}
