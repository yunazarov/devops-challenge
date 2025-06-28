resource "docker_image" "this" {
  name = var.image
}

resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.latest

  command = ["redis-server", "--appendonly", "yes"]

  ports {
    internal = 6379
    external = var.port
  }

  volumes {
    host_path      = "${path.module}/data"
    container_path = "/data"
  }

  terraform {
    backend "local" {
      path = "/opt/terraform-states/postg.tfstate"
    }
  }
  
  restart = "unless-stopped"
}
