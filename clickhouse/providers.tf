terraform {
  required_version = ">= 1.4"

  backend "local" {
    path = "/opt/terraform-states/clickhouse.tfstate"
  }

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

