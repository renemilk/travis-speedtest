.PHONY: docker docker_push

docker:
	docker build -t renemilk/travis-speedtest debian_docker

docker_push: docker
	docker push renemilk/travis-speedtest