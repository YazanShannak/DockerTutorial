#The base image for our image: it is recommended to be pulled on your local machine
FROM ubuntu:16.04
#The author name 
MAINTAINER Yazan and Saeed
# RUN command is excuted during building the image: in this context it installs Ubuntu updates 
RUN apt-get update
# CMD commands is excuted once you create a container from the built image
CMD ["echo", "hello from your first built image"]