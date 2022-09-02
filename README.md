[![CircleCI](https://dl.circleci.com/status-badge/img/gh/iamfydel/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/iamfydel/DevOps_Microservices/tree/master)

# DevOps_Microservices Project Summary

## Project Overview

This project operationalizes a Machine Learning Microservice API. 

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The following tasks were performed:
* Test project code using linting
* Complete Dockerfile to containerize the application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

## Instructions to run scripts

run python app.py

### In Docker
run ./run_docker.sh
run ./make_prediction.sh
run ./upload_docker.sh

### In Kubernetes
run ./run_kubernetes.sh
run ./make_prediction.sh

## A short explanation of the files in the repository.

* [.circleci](/.circleci): For the CircleCI build server
* [model_data](/model_data) : this folder contains the pretrained `sklearn` model and housing csv files
* [output_txt_files](/output_txt_files): folder contains sample output logs from running `./run_docker.sh` and `./run_kubernetes.sh`
* [app.py](/app.py) : contains the flask app
* [Dockerfile](/Dockerfile): contains instructions to containerize the application
* [Makefile](/Makefile) : contains instructions for environment setup and lint tests
* [requirements.txt](/requirements.txt): list of required dependencies
* [run_docker.sh](/run_docker.sh): bash script to build Docker image and run the application in a Docker container
* [upload_docker.sh](/upload_docker.sh): bash script to upload the built Docker image to Dockerhub
* [run_kubernetes.sh](/run_kubernetes.sh): bash script to run the application in a Kubernetes cluster
* [make_prediction.sh](/make_prediction.sh): bash script to make predictions against the Docker container and k8s cluster
* [README.md](/README.md): this README file