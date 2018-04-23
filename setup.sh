#!/usr/bin/env bash

set -e

function load_creds() {
  lpass show 2386970112862933478 --notes | grep ^DRONE > .drone.env
  lpass show 2386970112862933478 --notes | grep ^DRONE_SECRET > .drone.secret.env
}

function main() {
  load_creds
}

main
