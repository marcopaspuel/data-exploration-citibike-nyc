# Data Exploration Citibike NYC

### Introduction
This repository contains a series of notebooks for data preparation, processing and analysis of the NYC Bike Share Data.

### Project Dependencies
- [Docker](https://www.docker.com/https://www.terraform.io/downloads.html)

### Getting Started

#### 1. Fork and clone this repository in your local environment

#### 2. Download the NYC Bike Share Data

This repository contains a [Makefile](Makefile) and a helper script to download the data. To download the data run the following command:
```bash
make download-data
```

#### 3. Build and Run the Docker Container

To build and run the container run the following commands:
```bash
make docker-build
make docker-run
```
or just
```bash
make
```

#### 4. Open the Jupyter Notebooks

Once the container starts you will get a link to open the Jupyter Notebook. Go ahead a click on the link.
The notebooks are in the following directory `work/notebooks` and they contain further information about the project.

#### 5. Clean Up
You can run the following command to stop and remove the container.

```bash
make docker-stop
```
