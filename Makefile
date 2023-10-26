container=laravel                                     //In order to execute Makefile we have to have Make in our machine. After that in the Makefile we have to declare Our container name and the image name(where laravel are running).
image=xpress-docker-laravel

build:
	docker-compose build --no-cache --force-rm        //Want to run the docker container for the first time we have to build first.

up:
	docker-compose up -d    //To run the docker container.

stop:
	docker-compose stop     //To stop the docker container.

composer-update:                                       //This command for run into a new machine.
	docker exec laravel bash -c "composer update"      //Here, after exec we have to write our container name, beside that all are same.
 
data:
	docker exec laravel bash -c "php artisan migrate"  //To migrate database tables.
	docker exec laravel bash -c "php artisan db:seed"  //To create dammy data.
