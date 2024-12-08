# Docker Compose boilerplate

The project contains 2 Docker containers: `alpine` and `debian`. You can run them one-by-one or all at once at start tinkering with them.

## Installation

```bash
git clone https://github.com/cpuch/docker-compose-boilerplate.git
```

## Usage

Init the project

```bash
bash init.sh
```

Run all containers

```bash
docker compose up --build --detach
```

Run (debian) containers

```bash
docker compose up --build --detach debian
```

Shell into (debian) container

```bash
docker compose exec debian bash
```

Shell into (debian) container as root

```bash
docker compose exec -u root debian bash
```

Stop all containers

```bash
docker compose stop
```

Stop (debian) container

```bash
docker compose stop debian
```