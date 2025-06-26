output "port" {
  value = docker_container.this.ports[0].external
}

output "user" {
  value = var.user
}

output "password" {
  value = var.password
}

output "database" {
  value = var.db
}
