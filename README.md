# docker
## theory 
<img src=docker1.jpg>
<img src=docker2.jpg>
<img src=docker3.jpg>

### basic cmd

### history 
```
akash@sky:~$ docker version
Client:
 Version:           24.0.5
 API version:       1.43
 Go version:        go1.20.3
 Git commit:        24.0.5-0ubuntu1~20.04.1
 Built:             Mon Aug 21 19:50:14 2023
 OS/Arch:           linux/amd64
 Context:           default

Server:
 Engine:
  Version:          24.0.5
  API version:      1.43 (minimum version 1.12)
  Go version:       go1.20.3
  Git commit:       24.0.5-0ubuntu1~20.04.1
  Built:            Mon Aug 21 19:50:14 2023
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
akash@sky:~$ docker images
REPOSITORY                    TAG                  IMAGE ID       CREATED         SIZE
new_c                         latest               d9cf72d4bfbc   38 hours ago    77.9MB
<none>                        <none>               331d57443fa7   38 hours ago    1.37GB
c-code                        latest               4c79441d2cca   39 hours ago    1.37GB
golang                        alpine               438d61874560   2 days ago      230MB
demo                          latest               9241d29eb157   6 days ago      228MB
<none>                        <none>               85f66066f141   6 days ago      429MB
akash@sky:~$ docker pull ubuntu
Using default tag: latest
latest: Pulling from library/ubuntu
Digest: sha256:77906da86b60585ce12215807090eb327e7386c8fafb5402369e421f44eff17e
Status: Image is up to date for ubuntu:latest
akash@sky:~$ docker run ubuntu date
Sat Apr  6 06:29:14 UTC 2024
akash@sky:~$ docker run ubuntu sleep 30
akash@sky:~$ docker run ubuntu sleep 60
akash@sky:~$ 
akash@sky:~$ docker ps
CONTAINER ID   IMAGE             COMMAND                  CREATED       STATUS        PORTS                                                                                      NAMES
55dbb8a6ad90   jenkins/jenkins   "/usr/bin/tini -- /u…"   2 weeks ago   Up 10 hours   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp, 0.0.0.0:50000->50000/tcp, :::50000->50000/tcp   fervent_saha
akash@sky:~$ docker ps -a
CONTAINER ID   IMAGE             COMMAND                  CREATED         STATUS                          PORTS                                                                                      NAMES
623717f74fa0   ubuntu            "sleep 60"               2 minutes ago   Exited (0) About a minute ago                                                                                              sharp_jepsen
eea64eb9da15   ubuntu            "sleep 30"               2 minutes ago   Exited (0) 2 minutes ago                                                                                                   gracious_meninsky
66149da90a2b   ubuntu            "date"                   3 minutes ago   Exited (0) 3 minutes ago           
akash@sky:~$ docker run -d apline ping google.com
Unable to find image 'apline:latest' locally
^C
akash@sky:~$ docker run -d alpine ping google.com
c10c9041a2f514b7def14a70f0e2fb6b99650bd25a0183956389c8413f72da09
akash@sky:~$ docker ps
CONTAINER ID   IMAGE             COMMAND                  CREATED          STATUS          PORTS                                                                                      NAMES
c10c9041a2f5   alpine            "ping google.com"        15 seconds ago   Up 14 seconds                                                                                              upbeat_galois
55dbb8a6ad90   jenkins/jenkins   "/usr/bin/tini -- /u…"   2 weeks ago      Up 10 hours     0.0.0.0:8080->8080/tcp, :::8080->8080/tcp, 0.0.0.0:50000->50000/tcp, :::50000->50000/tcp   fervent_saha
```
### Docker basic commands
```
docker version ----> to show client and server details
> docker images ---> to show docker images
> docker ps ----> to show only running container 
> docker ps -a -----> to show all container 
> docker pull -----> to pull or get image from dockerhub / docker registry 
> docker run ----> to run container  from docker image
> options 
>    -d ----> to detach container / container goes in background
>    --name  ---> to give name 
>    -it -----> intractive terminal  and give  (task/CMD ---> shell name)
> 
> to exit from -it use exit cmd  ----> then container stoped 
> to exit from container click  cntrl P+Q  --- then still running 
> docker exec -it  (container_name  or Container Id) (shell)
> docker stop (container_name/id) ---> to stop container
> docker start (conatiner_name/id) ---> to start container 
> docker rm (container_name/id) ---> to delete exited container 
> docker rm -f (container_name/id)  ---> to delete running container also 
> docker rmi (container_name/id) ----> to delete docker image 
> docker tag ca2b0f26964c ubuntu ----> to change image name
> docker inspect ---> to inspect container details
> docker commit ---> to create image from container
> docker login ----> to cli login of docker registry
> docker logout
> docker push (image_name) ---> to push on dockerhub 

```
### NOTE- create image name using your username like - aakashgaur57/myimg 


## mysql , phpmyadmin , wordpress

```
2047  docker build -t echotest -f echo-dockerfile . 
 2048  docker run -e name=akash echotest
 2049  docker run -e name=ak echotest
 2050  vim myvar
 2051  docker run --env-file myvar echotest
 2052  docker run -it --env-file myvar echotest
 2053  docker run -it --env-file myvar echotest bash
 2054  docker run -e MYSQL_USER=test -e MYSQL_PASSWORD=q123 -d mysql
 2055  docker ps
 2056  docker run -e MYSQL_ROOT_PASSWORD=q123 @MYSQL_ROOT_PASSWORD -e MYSQL_USER=test -e MYSQL_PASSWORD=q123 -d mysql
 2057  docker ps
 2058  docker inspect 299 | grep IPA
 2059  mysql -h 172.17.0.6 -u test -p
 2060  docker run -itd -e PMA_HOST=172.17.0.6 phpmyadmin
 2061  docker inspect df69 | grep IPA
```
## docker volume

```
docker volume ls
 1963  docker ps
 1964  docker volume create myvolume
 1965  docker volume ls
 1966  docker run -it --rm --name test ubuntu bash
 1967  docker ps -a
 1968  docker run -it -v myvolume:/hello --rm --name akash ubuntu bash

rootuser
 ls
  184  docker run -it --rm -v /home/akash/test/:/abc ubuntu 
  185  docker run -itd --rm -v /home/akash/test/:/var/www/html/ aakashgaur57/apache
  186  docker run -itd --rm -v /home/akash/test/:/var/www/html/ aakashgaur57/apache:1.1.0
  187  docker ps
  188  docker inspect c26 | grep IPA
  189  cat index.html 
  190  docker exec -it c26 bash
  191  docker run -itd --rm -v /home/akash/test/:/usr/local/apache2/htdocs/ aakashgaur57/apache:1.1.0
  192  docker volume 
  193  vim index.html 
  194  docker run -itd --rm -v xxyyyzz:/usr/local/apache2/htdocs/ aakashgaur57/apache:1.1.0
  195  docker volume ls

```

### port forwarding 
```
docker run -itd httpd
    2  docker ps
    3  docker inspect 764 | grep IPA
    4  curl 172.17.0.2
    5  docker run -itd 
    6  docker run -itd -p 1122:80 httpd
    7  docker ps
    8  docker run -itd -p 1123:80 phpmyadmin 
    9  docker ps
   10  docker run -itd -p 80:80 httpd
   11  systemctl status apache2
   12  systemctl status nginx
   13  docker run -itd  -e ssh_pass=q123 -p 1155:22 aakashgaur57/mysshtest
   14  docker ps
   15  docker images
   16  docker ps
   17  docker 
   18  docker images
```
