FROM mysql:latest

# .sh, .sql, .. files in the docker-entrypoint-initdb.d directory 
# will be executed by the root user when the container is started. 
COPY ./init_db/ /docker-entrypoint-initdb.d/
