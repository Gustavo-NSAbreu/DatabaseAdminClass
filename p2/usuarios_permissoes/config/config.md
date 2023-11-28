```bash
docker volume create user-permissions-data
docker network create user-permissions-network
docker run -d --name user-permissions -v user-permissions --network user-permissions-network -e "MYSQL_ROOT_PASSWORD=root" mariadb
docker run -d --name user-permissions-interface -p 80:80 --network user-permissions-network -e PMA_HOST=user-permissions -e "UPLOAD_LIMIT=552428800" phpmyadmin

docker start user-permissions; docker start user-permissions-interface;
```