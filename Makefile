.PHONY: all clean compose creds

all: creds compose clean

clean:
	rm .drone.env
	rm .drone.secret.env

compose:
	docker-compose up --detach

creds:
	lpass show 2386970112862933478 --notes | grep ^DRONE > .drone.env
	lpass show 2386970112862933478 --notes | grep ^DRONE_SECRET > .drone.secret.env

