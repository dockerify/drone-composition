#!/usr/bin/env bash

set -e

function run_clean() {
  rm drone.env
  rm drone.secret.env
}

function main() {
  run_clean
}

main
