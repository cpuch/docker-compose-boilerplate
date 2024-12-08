# Docker Compose boilerplate

## Installation

```bash
git clone https://github.com/cpuch/docker-compose-boilerplate.git
```

## Usage

Init the project

```bash
bash init.sh
```

Run the container

```bash
docker compose up --build --detach
```

Shell into the container

```bash
docker compose exec debian bash
```

Shell into the container as root

```bash
docker compose exec -u root debian bash
```
