
#flutter project run..
run:
	cd project1_flutter && flutter run

#Server run..
server-run:
	cd project1_server && docker compose up --build --detach && dart bin/main.dart --apply-migrations

generate:
	cd project1_server && serverpod generate

migration:
	cd project1_server && serverpod create-migration

migrate:
	cd project1_server && dart run bin/main.dart --role maintenance --apply-migrations