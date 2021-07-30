sudo docker exec -it local_pg psql -U postgres -c "create extension if not exists 'uuid-ossp';"
sudo docker exec -it local_pg psql -U postgres -c "drop database if exists my_database;"
sudo docker exec -it local_pg psql -U postgres -c "create database my_database encoding='UTF8';"
sudo docker exec -it local_pg psql -U postgres -c "create role my_user with encrypted password 'my_secret';"
sudo docker exec -it local_pg psql -U postgres -c "grant all privileges on database my_database to my_user;"
