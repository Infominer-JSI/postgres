# ===============================================
# BUILDER STAGE
# This step builds the project
# ===============================================

# use the version 13 of the postgres
FROM postgres:13

# set the environment variables
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB infominer

# copy the scripts to run the 
COPY scripts/* /docker-entrypoint-initdb.d/
