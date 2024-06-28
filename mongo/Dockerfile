# Dockerfile for MongoDB
FROM mongo:latest

COPY ./config/mongod.conf /etc/mongod.conf
COPY ./config/init_mongo.js /docker-entrypoint-initdb.d/
