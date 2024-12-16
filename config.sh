
cd C:\Users\Vitor\Desktop\docker compose mysql

docker-compose up -d ## subir o Mysql ##

docker ps ## verifica se o container esta em running ##

docker exec -it mysql-sicooperative mysql -u root -p ## acessar o mysql dentro do container

