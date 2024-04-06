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
