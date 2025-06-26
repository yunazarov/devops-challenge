output "clickhouse_http_port" {
  value = module.clickhouse.http_port
}

output "postgres_port" {
  value = module.postgres.port
}

output "redis_port" {
  value = module.redis.port
}
