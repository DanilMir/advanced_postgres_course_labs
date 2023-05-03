cd flyway
docker-compose down --remove-orphans
cd ..
docker-compose -f ./flyway/docker-compose.yml up -d   
docker-compose -f ./flyway/docker-compose-migrate.yml up  