#!/bin/bash

apt-get -y update
apt-get -y install postgresql-client
apt-get -y install postgresql
apt-get -y install pgadmin3 

cat <<-EOF | sudo -u postgres psql 
	CREATE USER root WITH PASSWORD 'cake';
	ALTER ROLE root WITH SUPERUSER;
	
	CREATE DATABASE adb;
	GRANT ALL PRIVILEGES ON DATABASE adb TO root;
EOF


cat <<-EOF | psql -U root -d adb
	CREATE TABLE account(id BIGSERIAL NOT NULL, name VARCHAR(30),
		birthdat DATE, last_login TIMESTAMP, balance DOUBLE PRECISION, credits
		INT);
	COPY account FROM '/vagrant/resources/account.csv' WITH CSV HEADER;
	SELECT * FROM account;
EOF