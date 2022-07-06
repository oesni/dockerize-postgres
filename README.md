### Dockerize postgresql database
Dockerize running postgresql database. All database on target server is dockerized.

## Update env.sh
```sh
# file name for sql dump
export BACKUP_SQL="mypg-dump-$(date +%Y-%m-%d).sql"
# postgresql server info
export SERVER_URL="localhost"
export SERVER_PORT="5432"
export SERVER_USER="postgres"
export SERVER_PSWD="postgres"
# docker image&tag name to build
export IMAGE_NAME="mypg"
export IMAGE_TAG="latest"
```

## Run dockerize.sh
```sh
# command should be run in git root directory
zsh dockerize.sh
# or
bash dockerize.sh
# or  ...
```

## Run docker image
ex)
```sh
docker run -e POSTGRES_PASSWORD=password mypostgres
```

## Run docker image with docker-compose
```sh
docker-compose up
```

## Reference
>https://hub.docker.com/_/postgres <br>
>https://github.com/docker-library/docs/blob/master/postgres/README.md <br>
>https://oesni.github.io/til/dockerize-postgresql/ <br>

Any Environment Variables and Configurations on [this documentation](https://github.com/docker-library/docs/blob/master/postgres/README.md) should work.