
#flutter project run..
run:
	cd project1_flutter && flutter run

#Server run..
server-run:
	cd project1_server && docker compose up --build --detach && dart bin/main.dart --apply-migrations

