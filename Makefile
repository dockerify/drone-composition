.PHONY: all cleanup compose creds

all: creds compose cleanup

cleanup:
	rm .drone.env
	rm .drone.secret.env

compose:
	docker-compose up --detach

creds:
	lpass show 2386970112862933478 --notes | grep ^DRONE > .drone.env
	lpass show 2386970112862933478 --notes | grep ^DRONE_SECRET > .drone.secret.env

