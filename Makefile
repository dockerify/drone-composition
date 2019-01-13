.PHONY: all clean compose creds

all: creds compose clean

clean:
	rm .drone.env
	rm .drone.secret.env

compose:
	docker-compose up --detach

creds:
	lpass show 7957002932100587888 --notes | grep ^DRONE > .drone.env

