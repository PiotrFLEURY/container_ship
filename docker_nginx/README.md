# Docker socket NGINX

Goal: Proxify Docker UNIX socket calls using NGINX

Example

```bash
sudo curl --unix-socket /var/run/docker.sock -X GET http://localhost/v1.41/images/json
```

# Setup

## Change Docker sock file permission

```bash
sudo chmod 666 /var/run/docker.sock
```

## Build docker image

```bash
sudo docker build -t docker_nginx .
```

## Start container

```bash
sudo docker run -p 80:80 -v /var/run:/var/run --rm -d --name docker_nginx docker_nginx
```

# Usage

## List images

```bash
curl http://localhost/images/json
```

# Docker API reference

[Docker engine 1.43 API reference](https://docs.docker.com/engine/api/v1.43/)