output "port" {
  value = docker_container.this.ports[0].external
}
