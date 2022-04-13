build:
	docker run --rm --name auryn-api-builder -v $(pwd)/build:/srv/slate/build -v $(pwd)/source:/srv/slate/source -v $(pwd)/config.rb:/srv/slate/config.rb slatedocs/slate build

start:
	docker run --rm --name auryn-api -p 4567:4567 -v $(pwd)/source:/srv/slate/source -v $(pwd)/config.rb:/srv/slate/config.rb slatedocs/slate serve

bash:
	docker exec -it auryn-api bash

stop:
	docker stop auryn-api

continue:
	docker start auryn-api

clean:
	rm -rf build && docker rm auryn-api