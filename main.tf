module "clickhouse" {
  source = "./clickhouse"
}

module "postgres" {
  source = "./postgres"
}

module "redis" {
  source = "./redis"
}

module "scripts" {
  source = "./scripts"
}
