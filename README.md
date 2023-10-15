# container_ship

## Goal 

Create a cross platform and open source docker interface

## Motivation

Be able to manage running docker containers using a web deployed interface installed on a server running docker engine.

## NGINX

This project uses NIGNX to connect to the docker engine UNIX socket

Read [docker_socket_nginx README](docker_socket_nginx/README.md)

## Target features

- [ ] List images
- [ ] List running containers
- [ ] Get container stats
- [ ] Get container logs
- [ ] Start a container
- [ ] Stop a container
- [ ] Restart a container