# ===============================================
# PRODUCTION STAGE
# This step builds and prepares the project
# for production. NOTE: For security reasons 
# change the environment variables.
# ===============================================

# use the version 13 of the postgres
FROM postgres:13

# set the environment variables
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=infominer

# copy the scripts to run them
COPY scripts/* /docker-entrypoint-initdb.d/
