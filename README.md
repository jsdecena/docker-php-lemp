# EARN Accounting Software
DAD custom accounting software

## How to Install

- Download and install docker in your system. [Download here](https://www.docker.com/get-started)

- Install composer [here](https://getcomposer.org/doc/00-intro.md) if you haven't

- - In the `project/`, rename `.env.example` to `.env`

- Move to the root folder and run `cd projects && docker-compose up -d`

- Go inside the docker container: `docker exec -it app sh`

- Once inside, run `composer install && php artisan fresh && php artisan db:seed`

- Open your browser and go to [http://localhost:8000](http://localhost:8000)

- Enjoy!