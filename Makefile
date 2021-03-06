OWNER := marcopaspuel
PROJECT := datascience-notebook
VERSION := 0.0.1
OPV := $(OWNER)/$(PROJECT):$(VERSION)

all: docker-build docker-run

## Download Data
.PHONY: download-data
download-data:
	cd bikeshare_data && ./download_bikeshare_data.sh

## Build Docker Image
.PHONY: docker-build
docker-build:
	docker build -f docker/Dockerfile -t $(OPV) .

## Run Notebook Container
.PHONY: docker-run
docker-run:
	docker run --rm -d --name datascience-notebook -p 8888:8888 -v "${PWD}":/home/jovyan/work $(OPV)
	sleep 5
	docker logs datascience-notebook

## Stop Notebook Container
.PHONY: docker-stop
docker-stop:
	docker stop datascience-notebook
