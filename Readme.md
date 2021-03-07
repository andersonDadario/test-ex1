docker run --name mysql -e MYSQL_ROOT_PASSWORD=toor -d mysql

docker exec -it mysql bash

mysql -u root -p

# password is toor