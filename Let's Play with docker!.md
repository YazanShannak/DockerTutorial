# Let's Play with docker!

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

| Flag   | Discerption  |
| :----- | :----------- |
| -a     | all          |
| -d     | detach       |
| -f     | force remove |
| -p     | publish      |
| -q     |              |
| -t     | tag          |
| -v     | volume       |
| --it   |              |
| --name |              |
|        |              |
|        |              |

#### General commands



#### Container commands



#### Image commands



#### Volumes Commands



#### Network Commands



#### Registry Commands



### Docker Instruction Commands

