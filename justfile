up:
  docker-compose up

down:
  docker-compose down

pull:
  docker-compose pull

clear:
  docker-compose rm -f
  rm -rf .data

types:
  yarn codegen

build:
  rm -rfv dist
  yarn build

view:
  gh repo view --web

bug: clear build up
sub: types build

quickstart: pull
  yarn
  yarn codegen
  yarn build
  