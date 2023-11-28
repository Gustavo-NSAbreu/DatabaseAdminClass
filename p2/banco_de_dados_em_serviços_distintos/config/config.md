```bash
docker volume create database-service-1-data
docker network create database-service-1-network
docker run -d --name database-service-1 -v database-service-1 --network database-service-1-network -e "MYSQL_ROOT_PASSWORD=root" mariadb
docker run -d --name database-service-1-interface -p 80:80 --network database-service-1-network -e PMA_HOST=database-service-1 -e "UPLOAD_LIMIT=552428800" phpmyadmin

docker start database-service-1; docker start database-service-1-interface;



docker volume create database-service-2-data
docker network create database-service-2-network
docker run -d --name database-service-2 -v database-service-2 --network database-service-2-network -e "MYSQL_ROOT_PASSWORD=root" mariadb
docker run -d --name database-service-2-interface -p 81:80 --network database-service-2-network -e PMA_HOST=database-service-2 -e "UPLOAD_LIMIT=552428800" phpmyadmin

docker start database-service-2; docker start database-service-2-interface;



docker volume create database-service-3-data
docker network create database-service-3-network
docker run -d --name database-service-3 -v database-service-3 --network database-service-3-network -e "MYSQL_ROOT_PASSWORD=root" mariadb
docker run -d --name database-service-3-interface -p 82:80 --network database-service-3-network -e PMA_HOST=database-service-3 -e "UPLOAD_LIMIT=552428800" phpmyadmin

docker start database-service-3; docker start database-service-3-interface;

```