## variables
image_name = docker_notebook_template 
container_workdir = /main
tag = latest
port = 1112

## build the container
build:
	docker build -t $(image_name):$(tag) .

## run container on port
run:
	docker run --rm -ti -v $(shell pwd):$(container_workdir) -p $(port):8888 $(image_name):$(tag) 

# build and run
all:    build run
