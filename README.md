## Инструкция
- ставим star (звёздочка на репе)
- делаем форк
- далее, вы продолжаете работу в своём форке
- по готовности - отправляете ссылку на ваш готовый форк в отклике вместе с мудбордами

## Челлендж

Поднять минимальную инфраструктуру (ClickHouse, PostgreSQL, Redis Cluster) с использованием Terraform и GitHub Actions.

## Структура
- `clickhouse/` — конфигурация ClickHouse
- `postgres/` — конфигурация PostgreSQL
- `redis/` — конфигурация Redis Cluster
- `.github/workflows/` — CI пайплайн для проверки и деплоя
- `scripts/load_data.py` — пример скрипта загрузки данных из открытого API

## Требования
- Terraform >= 1.4
- Docker & Docker Compose
- GitHub аккаунт для Actions

## Задание
1. Поднять всю инфраструктуру командой `terraform apply`
2. Реализовать CI через GitHub Actions (validate, plan, apply)
3. Загрузить данные из публичного API (например, CoinGecko) в ClickHouse/Postgres/Redis
4. Показать, что данные читаются (запросы/скрины/curl)
