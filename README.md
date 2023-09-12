#  1C-Medibook Authentication Microservice
## Andrés Fernando Aranguren Silva
- --
## Authentication Microservice

A ruby on rails app that handles the authentication process of the app Medibook.

Main functions that this service manage:

- User login, logout, register
- Grants session token


# Clone and App installation

1. First you'll need to clone this repository to your local machine using:

        git clone https://github.com/afarangurens/medibook_auth_ms.git
        cd medibook_auth_ms

# Deployment Instructions

1. This microservice consist in a tuple of a postgres docker and a ruby on rails docker, you will need to create the postgres container first, for this pull the official postgres image from docker and run the container:

        docker run --name medibook_auth_db -e POSTGRES_PASSWORD=1234 -d -p 5432:5432 postgres      

2. Then you'll need to create the database:

         docker exec -it medibook_auth_db bash 

Once inside the container run the following commands:

        psql -U postgres
        CREATE DATABASE medibook_auth_db;

3. Now we're going to build the Dockerfile of the ruby app for this you'll need to build the image using

        docker build --no-cache -t medibook_auth_ms .

Then run:
        docker run --name medibook_auth_ms -p 3000:3000 --link medibook_auth_db:postgres -e DATABASE_URL=postgresql://postgres:1234@postgres:5432/medibook_auth_db -d medibook_auth_ms

And lastly:
        docker exec -it medibook_auth_ms rails db:create db:migrate        


# Accesing the Service

1. The services can be found running on:

        http://localhost:3000/

# Tests

- <a href="">Postman Collection</a></h5>

-- -
