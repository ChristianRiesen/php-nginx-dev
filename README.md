# PHP and Nginx Development Docker Container

Runs PHP 8 and supplies composer 2, Nodejs 14 (plus yarn).

Built ontop of https://github.com/webdevops/Dockerfile/blob/master/docker/php-nginx-dev/8.0/Dockerfile

The directory nginx points to is in the folder `/app` inside the container.

## Symfony example

Copy the content of the `symfony-example` folder into the root of your project directory and edit the docker-compose file to match your needs. Do `docker compose up` to start it.

The default config will include this container and also start a mysql and redis container for the app to use.

The vhosts file is configured for symfony to work out of the box. Feel free to add changes as you need them.