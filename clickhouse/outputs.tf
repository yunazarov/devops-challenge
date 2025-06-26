output "http_port" {
  value = docker_container.this.ports[1].external
}

output "native_port" {
  value = docker_container.this.ports[0].external
}
