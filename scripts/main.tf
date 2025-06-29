resource "docker_image" "python" {
  name = "python:3.11-slim"
}

resource "docker_container" "fetcher" {
  name       = "fetcher"
  image      = docker_image.python.name
  restart    = "unless-stopped"
  entrypoint = ["sh", "-c", "pip install requests psycopg2-binary clickhouse-driver redis && tail -f /dev/null"]


  volumes {
    host_path      = abspath("${path.module}/load_data.py")
    container_path = "/app/script.py"
  }

  networks_advanced {
    name = "app"
  }

  env = [
    "CLICKHOUSE_HOST=clickhouse",
    "CLICKHOUSE_PORT=9000",
    "POSTGRES_HOST=postgres",
    "POSTGRES_PORT=5432",
    "POSTGRES_USER=postgres",
    "POSTGRES_PASSWORD=postgres",
    "POSTGRES_DB=app",
    "REDIS_HOST=redis",
    "REDIS_PORT=6379"
  ]
}
