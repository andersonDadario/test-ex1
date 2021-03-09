## Iniciar container & executar init/db.sql

```
docker run --name mysql \
  -e MYSQL_ROOT_PASSWORD=toor \
  -v "$(pwd)/init:/docker-entrypoint-initdb.d" \
  -v "$(pwd)/queries:/queries" \
  -d mysql
```

## Executar query

```
docker exec -it mysql \
  bash -c "mysql -u root --password=toor testdb < /queries/query.sql"
```

## Encerrar container

```
docker rm -f mysql
```
