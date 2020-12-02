# Docker with Nginx and React

## Prerequisites
Install Docker

## How to run
    $ docker-compose build
    $ docker-compose up

## How to test with web browser
open http://localhost:80 with your favorite web browser.

## How to stop
    $ docker-compose down

## Dockerfiles
    - Dockerfile: nginx official image with Alpline stable version
    - Dockerfile.ubuntu: nginx official image with Debian/Ubuntu stable version
## Things to improve 
nginx*.conf need to be optimized for production use including https, SSL certificate and etc

## License MIT