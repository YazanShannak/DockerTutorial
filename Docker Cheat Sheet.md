# Docker Cheat Sheet

## Introduction

This document serves as a cheat sheet to quickly lookup a command and what it's used for ,partitioned by different components of Docker: Images, Containers, Network, Volume, ..etc



## Images

| Command                                    | Description                                                  |
| :----------------------------------------- | ------------------------------------------------------------ |
| docker image ls                            | View all available images on your local machine              |
| docker image pull <image-name>:<tag>       | Pull an image from Dockerhub (default image registry), if tag isn't specified the default value is "latest" |
| docker image build -t <image-name>:<tag> . | Builds an image with a Dockerfile in the directory, the image is named with the tag provided |



##  Containers

| Command                                                   | Description                                                  |
| --------------------------------------------------------- | ------------------------------------------------------------ |
| docker container ls                                       | View ***running*** containers                                |
| docker container ls -a                                    | View all running and stopped containers                      |
| docker container run <image-name>                         | Runs a new container from the specified image                |
| docker container run --name <container-name> <image-name> | Runs a new container from the specified image with the provided container name |
| docker container run -d <image-name>                      | Runs a new container in detached mode (in the background)    |

