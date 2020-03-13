# Getting your hands dirty with Docker!

[TOC]



## Intro

this section is mainly intended to give the reader a hand-on experience on Docker Commands. to achieve maximum understanding of Docker technology, we have created a simple tutorial that aims at introducing the reader to the main concepts of Docker technology. So, it is highly recommended to read the tutorial before proceeding with docker commands. You can reach the tutorial from the following [link](addlink).

To start with docker, make sure that docker is already running on your machine after installation. If it is not running , just run it according to your operating system and wait until it prompt you that Docker is running. following that, open `Windows PowerShell` in case you are using `Microsoft Windows` by searching it in `Start Menu`. Alternatively, if you are using  `Linux-based OS`, just Start a new `Terminal window` and let us start playing with docker:

## My First Docker Image (hello-world)

Docker hello-world image is an introductory image that introduces the user to the performed processes by docker to run a container from a certain image, to run `hello-world` image type this command in your PowerShell or terminal window :

```
docker run hello-world
```

docker run command start a new container from a certain image. If the image is not available locally  on your machine, docker will automatically download it from docker HUB and start a new container from the image once it has been downloaded. Don't worry about that, we will delve deeper into the details later on. For Now, it is expected to see the following output on your terminal:

<img src="C:\Users\DELL\Desktop\Docker photo\hello-world.jpg" style="zoom:67%;" />

Congratulations!! you have just downloaded your first image and created your first container. Good Job.

## Docker Commands

Basically, there are two types of Docker commands including`Command-Line Interface (CLI)` & Docker `Instructions Commands`. Docker CLI are used mainly for managing docker components such as images and containers, while Docker instruction files are mainly used for creating Dockerfiles. Docker CLI can be divided into seven categories including :

1. Important flags 
2. General commands
3. Container commands
4. Image commands
5. Volume commands.
6. Network commands
7. Registry commands

We will pass in a detailed manner through each category and provide a specific example to the most important commands in each category. it is worth noting that docker has a wide range commands that can not be covered in one tutorial so bear in that how much you practice, how much you gain experience and knowledge. One more thing to to mention before starting our journey is that docker provides a detailed description of its commands. So, in case you are stuck with a certain commands do not hesitate and feel free to ask Docker using the help command as follow: 

```
docker [command name] --help
eg: docker version --help
```

### Docker CLI

#### Important flags

Flags are not docker commands, but they play an important role in controlling the results of the commands you give for docker to perform, so, you can think of the flags to docker commands as the salt to the food. And thus, you have to gain a good knowledge in dealing with them. In fact, the same flag has different meanings in different contexts of the command, but we list here some of the most important and common flags in docker commands along with their discerption in the following table:

| Flag   | Discerption                                                  |
| :----- | :----------------------------------------------------------- |
| -a     | all                                                          |
| -d     | detach: run a command in the background and make the terminal available for other commands |
| -f     | force remove                                                 |
| -p     | publish                                                      |
| -q     |                                                              |
| -t     | tag                                                          |
| -v     | volume                                                       |
| --it   |                                                              |
| --name |                                                              |
| --help | help: gives a detailed description of a specific command     |
|        |                                                              |

#### General commands

In the following section, we are going to describe a set of 

`docker version` commands: gives a detailed description about the docker version you are using.

```
docker version
```

```
docker -v
```

Expected output:

<img src="C:\Users\DELL\Desktop\Docker photo\docker version command.jpg" alt="docker version command" style="zoom: 50%;" />

-----------------------------------------------------------------------------------------------------------------------------------------------------------

`docker ps` command: gives a list of either active containers or all containers (active and switched off).

```
docker ps
```

```
docker ps-a
```

Expected output:

<img src="C:\Users\DELL\Desktop\Docker photo\docker ps.jpg" alt="docker ps" style="zoom: 67%;" />

-----------------------------------------------------------------------------------------------------------------------------------------------------------

`docker info` command: gives a detailed description about docker docker components including but limited to: the number of running, stopped paused containers, number of images, docker version, volumes, product license, CPU and memory usage.

```
docker info
```

Expected output:

<img src="C:\Users\DELL\Desktop\Docker photo\docker info.jpg" alt="docker info" style="zoom: 67%;" />

-----------------------------------------------------------------------------------------------------------------------------------------------------------

`docker stats` command: gives a detailed information about the resources consumption such as CPU, RAM and network  of your local machine by the running containers.

```
docker Stats 
```

Expected output:

<img src="C:\Users\DELL\Desktop\Docker photo\docker stats.jpg" alt="docker stats" style="zoom: 67%;" />

To obtain the stats of a specific container:

```
docker stats <container-name> 
```

 or

```
docker stats <container-ID> 
```



#### Image commands

`docker image pull` command: allow the user to download image from either docker hub or docker registry into your local machine using the following structure:

```
docker image pull <image-name>[:tag]
```

For instance, pulling the the latest version of `hello-world` can be achieved through the following command: 

```
docker pull image hello-world:latest
```

Expected output:

<img src="C:\Users\DELL\Desktop\Docker photo\doker pull.jpg" alt="doker pull" style="zoom: 67%;" />

note that docker will look for the image on your local machine if it is not available, docker will download it directly from `docker HUB`. Further, the `tag` keyword represents the version of the image you are going to download. Image name and tag can be directly obtained from docker HUB. 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

`docker image push` command: allow the user to transfer to transfer his/her own created into either private registry or public registry (docker HUB) using the following structure: 

```
docker image push [registry-name/][username/]<image-name>[:tag]
```

For instance, I will push the previously downloaded hello-world image to  my public registry on docker HUB as follow: 

```

```



#### Container commands

`docker container run` commands:  run command enables the user to create new container from a certain image. there are multiple options that can be specified when creating new container, however, the main structure of the command is as follow:

```
docker container run <image-name>
```

applying the previous command (as is) will enforce docker to create and start new container with auto-generated name as shown in the following example with `nginx` image:

```
docker container run nginx
```

Expected output:

<img src="C:\Users\DELL\Desktop\Docker photo\docker run autogen -name.jpg" alt="docker run autogen -name" style="zoom: 67%;" />

you can observe that docker randomly assigned `xenodochial_hamilton` . And thus, to create a new container with specific name or to create multiple containers from the same image with different names :

```
docker container run <container-name> <image-name>
```

As an example, I will create 2 container from `nginx` image with different names as follow

```
dcoker container run --name foo nginx
```

```
docker container run --name bar nginx
```

Expected output:

<img src="C:\Users\DELL\Desktop\Docker photo\docker run --name.jpg" alt="docker run --name" style="zoom: 67%;" />

Another option is to run a new container and remove it directly after it stopped is achieved by applying the following command:

```
docker container run --rm <image-name>
```

As an example, I will apply the previous command with `nginx` image as follow:

```
docker container run --rm nginx
```

<img src="C:\Users\DELL\Desktop\Docker photo\docker run auto remove.jpg" alt="docker run auto remove" style="zoom:67%;" />

As you can observe, once the container stopped, it has been directly removed .

Some containers are designed to be created, perform specific task and then stop. A clear example of such containers is `python` container. to keep it running after creation, this command can help:

```
docker container run -td <image-name>
```

As an example, assuming that python image is already pulled to your local machine which is satisfied in my case:

```
docker container run -td python 
```

Expected output:

<img src="C:\Users\DELL\Desktop\Docker photo\docker run keep.jpg" alt="docker run keep"  />

As you can observe that in the first run the container created and exited directly, while in the second run it is created and kept running.

An additional useful run command, is to start a new container and apply a specific command inside it, in case it allows for this manner, this can be achieved by running a container in the interactive mode according to the following structure:

```
docker container run -it <image-name>
```

A good example of this is running a container interactively from python image which allow you to run python commands directly after creation as follow:

```
docker container run -it python 
```

Expected output:

![docker run interactive](C:\Users\DELL\Desktop\Docker photo\docker run interactive.jpg)

Ultimately, sometimes we need to define a port in the container to be known by our local machine to allow us reach it using the web browser, this can be achieved by the following structure:

```
docker container run -d -p port:port <image-name>
```

As an example, applying such run command on `nginx` image will publish the specified port 80 to be known  by our local machine as a way to reach it through the web browser as follow:

```
docker container run -d -p 80:80 nginx
```

Thus the container can be reached by typing [localhost:80](localhost:80) in the browser.

-----------------------------------------------------------------------------------------------------------------------------------------------------------

up to this point, we assume you gained a good knowledge with docker, so that, the upcoming sections will be described without examples. For now, your job is to start applying each of the upcoming commands by yourself. bear in mind that "Practice makes perfect"

-----------------------------------------------------------------------------------------------------------------------------------------------------------

`docker container ls` commands: `ls` command is identical to `ps` and have the same format .

for active container :

```
docker container ls
```

for all containers:

```
docker container ls -a
```

-----------------------------------------------------------------------------------------------------------------------------------------------------------

`docker container rm` commands: `rm` command enables the user to delete created container. there are multiple options that can be specified when deleting container as follow:

removing one or more containers:

```
docker container rm <container-name_1> <container-name_2> ... <container-name_n> 
```

Force stop a container in case it is running and remove it:

```
docker rm -f <container-name>
```

Force stop all containers in case they are  running and remove them:

```
docker rm -f $(docker ps -a -q)
```

Remove all stopped containers 

```
docker rm $(docker ps -q -f “status=exited”)
```

-----------------------------------------------------------------------------------------------------------------------------------------------------------

`container lifecycle` commands:  life cycle commands enable the user to manage the operation status of Docker containers and include:

create but do not start:

```
docker container create <image-name>
```

Stop a running container

```
docker container stop <container-name>
```

Start a stopped container 

```
docker container start <container-name>
```

Restart a running container :

```
docker container restart <container-name>
```

Pause a running container:

```
docker container pause <container-name>
```

Resume a paused container :

```
docker container unpause <container-name>
```

Force stop of a certain container:

```
docker container kill <container-name>
```

-----------------------------------------------------------------------------------------------------------------------------------------------------------

`performing commands inside container`: there are two command that enables you to connect into a certain container and and perform some operations inside it. these commands are `attach` and `exec` .

`docker attach` command: This command  attaches your terminal to a running container using the container name as follow:

```
docker container attach <container-name>
```

you have to ensure that the attached container is running in the interactive mode before performing this command. once you are attached to the container, you can act as you are in the terminal of the container. But the problem with this commands is once you exit the container terminal, the container will in turn stop running. So, this command is useful when you are planning to run a certain command and stop the container. But what is the solution if we want to keep our container up and running after performing our commands inside it?

`docker exec` command: this command overcome the previously mentioned problems by applying it as follow:

```
docker container exec -it <container-name> bash
```

Consequently, a `born again shell` (bash) terminal will be opened to allow you apply your commands inside the container while keeping it running once you exit the bash.

#### Volumes Commands

qwdwd

#### Network Commands



#### Registry Commands



### Docker Instruction Commands

