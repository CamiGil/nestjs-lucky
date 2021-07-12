db_start:
	docker run --name postgres-nest -p 5432:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=lucky-db -d postgres

db_stop:
	docker container stop postgres-nest && docker rm postgres-nest

db_seed:
	cat ./Docker/db/seed.sql | docker exec -i postgres-nest psql -U postgres -d lucky-db