# devops_batch
### 14mar sp_permission
```
akash@sky:/$ sudo mkdir project 
[sudo] password for akash: 
akash@sky:/$ ls
bin    dev   lib    libx32      mnt   project  sbin  swapfile  usr
boot   etc   lib32  lost+found  opt   root     snap  sys       var
cdrom  home  lib64  media       proc  run      srv   tmp
akash@sky:/$ 



akash@sky:/$ cd project/
akash@sky:/project$ touch a1f1.txt
touch: cannot touch 'a1f1.txt': Permission denied
akash@sky:/project$ sudo umask
sudo: umask: command not found
akash@sky:/project$ sudo umask 
sudo: umask: command not found
akash@sky:/project$ sudo -i 
root@sky:~# umask
0022
root@sky:~# logout
akash@sky:/project$ ls -ld .
drwxr-xr-x 2 root root 4096 Mar 14 10:46 .
akash@sky:/project$ sudo chmod 777 .
akash@sky:/project$ ls -ld .
drwxrwxrwx 2 root root 4096 Mar 14 10:46 .
akash@sky:/project$ cd ..
akash@sky:/$ cd project/
akash@sky:/project$ touch a1f1.txt
akash@sky:/project$ ls -l 
total 0
-rw-rw-r-- 1 akash akash 0 Mar 14 10:53 a1f1.txt
akash@sky:/project$ touch a1f2.txt
akash@sky:/project$ touch a1f3.txt
akash@sky:/project$ ls -l 
total 0
-rw-rw-r-- 1 akash akash 0 Mar 14 10:53 a1f1.txt
-rw-rw-r-- 1 akash akash 0 Mar 14 10:54 a1f2.txt
-rw-rw-r-- 1 akash akash 0 Mar 14 10:54 a1f3.txt
akash@sky:/project$ cd ..
akash@sky:/$ sudo chmod +t project
akash@sky:/$ ls -ld project
drwxrwxrwt 2 root root 4096 Mar 14 10:55 project
akash@sky:/$ cd project/
akash@sky:/project$ ls -l 
total 0
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:53 a1f1.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f2.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f3.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f1.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f2.txt
akash@sky:/project$ rm t1f2
rm: cannot remove 't1f2': No such file or directory
akash@sky:/project$ rm t1f2.txt 
rm: remove write-protected regular empty file 't1f2.txt'? y
rm: cannot remove 't1f2.txt': Operation not permitted
akash@sky:/project$ ls -l 
total 0
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:53 a1f1.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f2.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f3.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f1.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f2.txt
akash@sky:/project$ rm a1f3.txt 
akash@sky:/project$ ls -l 
total 0
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:53 a1f1.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f2.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f1.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f2.txt
akash@sky:/project$ cd ..
akash@sky:/$ ls -ld project/
drwxrwxrwt 2 root root 4096 Mar 14 10:57 project/
akash@sky:/$ sudo chmod o-x project
akash@sky:/$ ls -ld project/
drwxrwxrwT 2 root root 4096 Mar 14 10:57 project/
akash@sky:/$ sudo -i
root@sky:~# logout
akash@sky:/$ sudo chown :team11 project
akash@sky:/$ ls -ld project/
drwxrwxrwT 2 root team11 4096 Mar 14 10:57 project/
akash@sky:/$ cd project/
bash: cd: project/: Permission denied
akash@sky:/$ sudo chmod +x project/
akash@sky:/$ cd project/
akash@sky:/project$ ls -l 
total 0
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:53 a1f1.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f2.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f1.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f2.txt
akash@sky:/project$ touch a1f3.txt
akash@sky:/project$ ls -l
total 0
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:53 a1f1.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f2.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 11:12 a1f3.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f1.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f2.txt
akash@sky:/project$ cd ..
akash@sky:/$ ls -ld project/
drwxrwxrwt 2 root team11 4096 Mar 14 11:12 project/
akash@sky:/$ sudo chmod g+s project/
akash@sky:/$ ls -ld project/
drwxrwsrwt 2 root team11 4096 Mar 14 11:12 project/
akash@sky:/$ cd project/
akash@sky:/project$ ls -l 
total 0
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:53 a1f1.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f2.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 11:12 a1f3.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f1.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f2.txt
akash@sky:/project$ touch a1f4.txt
akash@sky:/project$ ls -l 
total 0
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:53 a1f1.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 10:54 a1f2.txt
-rw-rw-r-- 1 akash    akash    0 Mar 14 11:12 a1f3.txt
-rw-rw-r-- 1 akash    team11   0 Mar 14 11:14 a1f4.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f1.txt
-rw-rw-r-- 1 testuser testuser 0 Mar 14 10:54 t1f2.txt
akash@sky:/project$ cd /home/testuser/
akash@sky:/home/testuser$ ls
ACLDIR
akash@sky:/home/testuser$ cd ACLDIR/
akash@sky:/home/testuser/ACLDIR$ touch hello
akash@sky:/home/testuser/ACLDIR$ 
```
## shell_script
```
akash@sky:~$ mkdir shell_script
akash@sky:~$ cd shell_script/
akash@sky:~/shell_script$ vim test.sh
akash@sky:~/shell_script$ cat test.sh 
#!/bin/bash
#shebang for use to fix excuteable shell
echo "hello world"
akash@sky:~/shell_script$ ls -l 
total 4
-rw-rw-r-- 1 akash akash 72 Mar 15 10:59 test.sh
akash@sky:~/shell_script$ bash test.sh 
hello world
akash@sky:~/shell_script$ chmod +x test.sh 
akash@sky:~/shell_script$ test.sh
test.sh: command not found
akash@sky:~/shell_script$ date
Friday 15 March 2024 11:02:26 AM IST
akash@sky:~/shell_script$ mv test.sh test
akash@sky:~/shell_script$ test
akash@sky:~/shell_script$ ls
test
akash@sky:~/shell_script$ mv test test 123
mv: target '123' is not a directory
akash@sky:~/shell_script$ mv test test123
akash@sky:~/shell_script$ test123
test123: command not found
akash@sky:~/shell_script$ ls
test123
akash@sky:~/shell_script$ ls -l 
total 4
-rwxrwxr-x 1 akash akash 72 Mar 15 10:59 test123
akash@sky:~/shell_script$ 
akash@sky:~/shell_script$ echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
akash@sky:~/shell_script$ ./test123
hello world
akash@sky:~/shell_script$ mv test123 myecho 
akash@sky:~/shell_script$ sudo cp myecho /bin/
[sudo] password for akash: 
akash@sky:~/shell_script$ myecho 
hello world
akash@sky:~/shell_script$ ls
myecho
akash@sky:~/shell_script$ vim read.sh
akash@sky:~/shell_script$ vim var.sh
akash@sky:~/shell_script$ bash var.sh 
5
akash@sky:~/shell_script$ vim var.sh
akash@sky:~/shell_script$ bash var.sh 
akash
akash
akash@sky:~/shell_script$ vim var.sh
akash@sky:~/shell_script$ bash var.sh 
tell me your name:
akash
akash
Friday 15 March 2024 11:11:06 AM IST
akash@sky:~/shell_script$ vim var.sh
akash@sky:~/shell_script$ bash var.sh 
tell me your name:
akash
hello akash this is shell
Friday 15 March 2024 11:11:44 AM IST
akash@sky:~/shell_script$ cat var.sh 
#!/bin/bash
echo tell me your name: 
read x
sleep 2
echo hello $x this is shell
date
akash@sky:~/shell_script$ cat var.sh 
#!/bin/bash
echo tell me your name: 
read x
sleep 2
echo hello $x this is shell
date
akash@sky:~/shell_script$ 
``` 
## 16 march 
```
882  a=$((10+3))
  883  echo $a
  884  sum=`expr 10 + 3`
  885  echo $sum
  886  date
  887  cal 
  888  date ; sleep 2 ; cal ; sleep 2 ; echo "etc"
  889  cd shell_script/
  890  ls
  891  cat if2.sh 
  892  vim cmd.sh
  893  bash cmd.sh 
  894  vim for.sh
  895  bash for.sh 
  896  ls
  897  vim for.sh
  898  vim count.sh
  899  bash count.sh 
  900  cat count.sh 
  901  history 
```
## apache server

<img src=apache2_1.jpg>
<img src=apache2_2.jpg>

```
ubuntu@ip-172-31-40-21:~$ systemctl status apache2
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
     Active: active (running) since Thu 2024-03-28 05:18:58 UTC; 3min 5s ago
       Docs: https://httpd.apache.org/docs/2.4/
   Main PID: 2220 (apache2)
      Tasks: 55 (limit: 1121)
     Memory: 4.8M
        CPU: 41ms
     CGroup: /system.slice/apache2.service
             ├─2220 /usr/sbin/apache2 -k start
             ├─2222 /usr/sbin/apache2 -k start
             └─2223 /usr/sbin/apache2 -k start

Mar 28 05:18:58 ip-172-31-40-21 systemd[1]: Starting The Apache HTTP Server...
Mar 28 05:18:58 ip-172-31-40-21 systemd[1]: Started The Apache HTTP Server.
ubuntu@ip-172-31-40-21:~$ sudo systemctl enable apache2
Synchronizing state of apache2.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable apache2
ubuntu@ip-172-31-40-21:~$ 





ubuntu@ip-172-31-40-21:~$ cd /var/www/html/
ubuntu@ip-172-31-40-21:/var/www/html$ ls
index.html
ubuntu@ip-172-31-40-21:/var/www/html$ curl ifconfig.me
65.2.29.174ubuntu@ip-172-31-40-21:/var/www/html$ rm index.html 
rm: remove write-protected regular file 'index.html'? y
rm: cannot remove 'index.html': Permission denied
ubuntu@ip-172-31-40-21:/var/www/html$ ls -l index.html 
-rw-r--r-- 1 root root 10671 Mar 28 05:18 index.html
ubuntu@ip-172-31-40-21:/var/www/html$ sudo rm index.html 
ubuntu@ip-172-31-40-21:/var/www/html$ ls
ubuntu@ip-172-31-40-21:/var/www/html$ vim index.html
ubuntu@ip-172-31-40-21:/var/www/html$ sudo vim index.html
ubuntu@ip-172-31-40-21:/var/www/html$ cat index.html 
<!DOCTYPE html>
<html>
<body>

<h1>hello this is apache</h1>

<p>My first paragraph.</p>

</body>
</html>

ubuntu@ip-172-31-40-21:/var/www/html$ sudo vim index.html
ubuntu@ip-172-31-40-21:/var/www/html$ ls
index.html
ubuntu@ip-172-31-40-21:/var/www/html$ vim example.html
ubuntu@ip-172-31-40-21:/var/www/html$ sudo vim example.html
ubuntu@ip-172-31-40-21:/var/www/html$ sudo vim index.html
ubuntu@ip-172-31-40-21:/var/www/html$ cat index.html 
<!DOCTYPE html>
<html>
<body>

<h1>hello this is apache</h1>
<a href="/example.html"><button>Click me</button></a>
<p>My first paragraph.</p>

</body>
</html>

ubuntu@ip-172-31-40-21:/var/www/html$ cd /etc/apache2/
ubuntu@ip-172-31-40-21:/etc/apache2$ ls
apache2.conf    conf-enabled  magic           mods-enabled  sites-available
conf-available  envvars       mods-available  ports.conf    sites-enabled
ubuntu@ip-172-31-40-21:/etc/apache2$ vim ports.conf 
ubuntu@ip-172-31-40-21:/etc/apache2$ sudo vim ports.conf 
'ubuntu@ip-172-31-40-21:/etc/apache2$ 
ubuntu@ip-172-31-40-21:/etc/apache2$ sudo systemctl reload apache2
ubuntu@ip-172-31-40-21:/etc/apache2$ ls
apache2.conf    conf-enabled  magic           mods-enabled  sites-available
conf-available  envvars       mods-available  ports.conf    sites-enabled
ubuntu@ip-172-31-40-21:/etc/apache2$ sudo vim apache2.conf 
ubuntu@ip-172-31-40-21:/etc/apache2$ ls
apache2.conf    conf-enabled  magic           mods-enabled  sites-available
conf-available  envvars       mods-available  ports.conf    sites-enabled
ubuntu@ip-172-31-40-21:/etc/apache2$ sudo vim apache2.conf 
ubuntu@ip-172-31-40-21:/etc/apache2/sites-enabled$ ls -l 
total 0
lrwxrwxrwx 1 root root 35 Mar 28 05:18 000-default.conf -> ../sites-available/000-default.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-enabled$ cd ../sites-available/
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ ls
000-default.conf  default-ssl.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ vim 000-default.conf 
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ sudo vim 000-default.conf 
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ cd /var/www/
ubuntu@ip-172-31-40-21:/var/www$ sudo mkdir xyz
ubuntu@ip-172-31-40-21:/var/www$ ls
html  xyz
ubuntu@ip-172-31-40-21:/var/www$ sudo vim xyz/index.html
ubuntu@ip-172-31-40-21:/var/www$ sudo systemctl resload apache2
Unknown command verb resload.
ubuntu@ip-172-31-40-21:/var/www$ sudo systemctl reload apache2
ubuntu@ip-172-31-40-21:/var/www$ ls
html  xyz
ubuntu@ip-172-31-40-21:/var/www$ sudo systemctl restart apache2
ubuntu@ip-172-31-40-21:/var/www$ ls
html  xyz
ubuntu@ip-172-31-40-21:/var/www$ cd /etc/apache2/
ubuntu@ip-172-31-40-21:/etc/apache2$ ls
apache2.conf    conf-enabled  magic           mods-enabled  sites-available
conf-available  envvars       mods-available  ports.conf    sites-enabled
ubuntu@ip-172-31-40-21:/etc/apache2$ cat sites-enabled/
```
## DNS

<img src=dns_1.jpg>
<img src=dns_2.jpg>

## VirtualHost Apache server

<img src=dns_1.jpg>
<img src=dns_2.jpg>

```
ubuntu@ip-172-31-40-21:~$ ls
ubuntu@ip-172-31-40-21:~$ cd /etc/apache2/
ubuntu@ip-172-31-40-21:/etc/apache2$ ls
apache2.conf    envvars         mods-enabled     sites-enabled
conf-available  magic           ports.conf
conf-enabled    mods-available  sites-available
ubuntu@ip-172-31-40-21:/etc/apache2$ sudo vim sites-available/
ubuntu@ip-172-31-40-21:/etc/apache2$ sudo vim sites-available/000-default.conf 
ubuntu@ip-172-31-40-21:/etc/apache2$ ls
apache2.conf    envvars         mods-enabled     sites-enabled
conf-available  magic           ports.conf
conf-enabled    mods-available  sites-available
ubuntu@ip-172-31-40-21:/etc/apache2$ cd /var/www/html/
ubuntu@ip-172-31-40-21:/var/www/html$ cd ..
ubuntu@ip-172-31-40-21:/var/www$ ls
html  xyz
ubuntu@ip-172-31-40-21:/var/www$ cd xyz/
ubuntu@ip-172-31-40-21:/var/www/xyz$ cat index.html 
<h1>another path</h1>
ubuntu@ip-172-31-40-21:/var/www/xyz$ 
ubuntu@ip-172-31-40-21:/var/www/xyz$ cd
ubuntu@ip-172-31-40-21:~$ sudo vim /etc/apache2/sites-available/000-default.conf 
ubuntu@ip-172-31-40-21:~$ cd /var/www/
ubuntu@ip-172-31-40-21:/var/www$ ls
html  xyz
ubuntu@ip-172-31-40-21:/var/www$ sudo mkdir hello akash
ubuntu@ip-172-31-40-21:/var/www$ ls
akash  hello  html  xyz
ubuntu@ip-172-31-40-21:/var/www$ sudo vim akash/index.html
ubuntu@ip-172-31-40-21:/var/www$ sudo cat akash/index.html
<h1>hello world my name is akash</h1>
ubuntu@ip-172-31-40-21:/var/www$ sudo vim hello/index.html
ubuntu@ip-172-31-40-21:/var/www$ cat  vim hello/index.html
cat: vim: No such file or directory
<h1>hellllllllllooooooooooo</h1>
ubuntu@ip-172-31-40-21:/var/www$ cat hello/index.html
<h1>hellllllllllooooooooooo</h1>
ubuntu@ip-172-31-40-21:/var/www$ cd /etc/apache2/
ubuntu@ip-172-31-40-21:/etc/apache2$ s
s: command not found
ubuntu@ip-172-31-40-21:/etc/apache2$ ls
apache2.conf    envvars         mods-enabled     sites-enabled
conf-available  magic           ports.conf
conf-enabled    mods-available  sites-available
ubuntu@ip-172-31-40-21:/etc/apache2$ cd sites-available/
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ ls
000-default.conf  default-ssl.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ vim akash.com.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ sudo vim akash.com.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ cat akash.com.conf 
<VirtualHost *:80>
        ServerName akash.com
        DocumentRoot /var/www/akash
</VirtualHost>

ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ sudo vim hello.com.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ ls
000-default.conf  akash.com.conf  default-ssl.conf  hello.com.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ en
enable                       encguess
enable-ec2-spot-hibernation  env
enc2xs                       envsubst
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ en
enable                       encguess
enable-ec2-spot-hibernation  env
enc2xs                       envsubst
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ 

ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ cd ../sites-enabled/
ubuntu@ip-172-31-40-21:/etc/apache2/sites-enabled$ ls
000-default.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-enabled$ cd ../sites-available/
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ ls
000-default.conf  akash.com.conf  default-ssl.conf  hello.com.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ a2ensite akash.com.conf hello.com.conf 
Enabling site akash.com.
Could not create /etc/apache2/sites-enabled/akash.com.conf: Permission denied
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ sudo a2ensite akash.com.conf hello.com.conf 
Enabling site akash.com.
Enabling site hello.com.
To activate the new configuration, you need to run:
  systemctl reload apache2
ubuntu@ip-172-31-40-21:/etc/apache2/sites-available$ cd ../sites-enabled/
ubuntu@ip-172-31-40-21:/etc/apache2/sites-enabled$ ls
000-default.conf  akash.com.conf  hello.com.conf
ubuntu@ip-172-31-40-21:/etc/apache2/sites-enabled$ sudo systemctl reload apache2
ubuntu@ip-172-31-40-21:/etc/apache2/sites-enabled$ apache2 -t
[Sat Mar 30 05:27:52.624257 2024] [core:warn] [pid 4366] AH00111: Config variable ${APACHE_RUN_DIR} is not defined
apache2: Syntax error on line 80 of /etc/apache2/apache2.conf: DefaultRuntimeDir must be a valid directory, absolute or relative to ServerRoot
```
## Storage

```
> storage
> 3 types
> block storage , file storage , object storage
> block st ---> 
> block format data store 
> single Os storage , do not share at same time 
> max block size = 4mb 
> 
> file storage -->> 
> share at a time 
> 
> object storage -->> 
> slow speed
> store data in object form
> 
> 
> Partitions --->
>    why --> to seprate file , crupt issue , 
>   type  --> MBR(master boot record) , GPT( GUID partiton table)
> DIFF MBR -max 4 primary part , GPT - 128 primary 
> legacy bios support only , both UEFI and legacy 
> crc not support , crc support (cyclic redendency check) 
> size - max 2TB , 9ZB 
> cmd - fdisk  , gdisk
>lsblk - to check volume
>
lsblk
    8  fdisk
    9  sudo fdisk /dev/xvdbb 
   10  lsblk 
   11  mkdir hello
   12  mount /dev/xvdbb1 hello
   13  sudo mount /dev/xvdbb1 hello
   14  mkfs.ext4 /dev/xvdbb1 
   15  sudo mkfs.ext4 /dev/xvdbb1 
   16  sudo mount /dev/xvdbb1 hello
   17  lsblk 
   18  cd hello/
   19  mkdir cool xyz hurrey
   20  sudo mkdir cool xyz hurrey
   21  ls
   22  lsblk
   23  mkdir cooool
   24  ls
   25  cd hello/
   26  ls
   27  cd  ../cooool/
   28  ls
   29  sudo mount /dev/xvdbb1 ../cooool/
   30  ls
   31  cd ..
   32  ls
   33  cd cooool/
   34  ls
   35  history 

Command (m for help): p
Disk /dev/xvdbb: 10 GiB, 10737418240 bytes, 20971520 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x1e1e7857

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): 

Using default response p.
Partition number (1-4, default 1): 
First sector (2048-20971519, default 2048): 
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-20971519, default 20971519): +2G

Created a new partition 1 of type 'Linux' and of size 2 GiB.

Command (m for help): p
Disk /dev/xvdbb: 10 GiB, 10737418240 bytes, 20971520 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x1e1e7857

Device      Boot Start     End Sectors Size Id Type
/dev/xvdbb1       2048 4196351 4194304   2G 83 Linux

Command (m for help): n
Partition type
   p   primary (1 primary, 0 extended, 3 free)
   e   extended (container for logical partitions)
Select (default p): 

Using default response p.
Partition number (2-4, default 2): 
First sector (4196352-20971519, default 4196352): 
Last sector, +/-sectors or +/-size{K,M,G,T,P} (4196352-20971519, default 20971519): +3G

Created a new partition 2 of type 'Linux' and of size 3 GiB.

Command (m for help): p
Disk /dev/xvdbb: 10 GiB, 10737418240 bytes, 20971520 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x1e1e7857

Device      Boot   Start      End Sectors Size Id Type
/dev/xvdbb1         2048  4196351 4194304   2G 83 Linux
/dev/xvdbb2      4196352 10487807 6291456   3G 83 Linux

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.

```
### fstab entry

```
ubuntu@akash:~/hello$ sudo vim /etc/fstab 
ubuntu@akash:~/hello$ 
ubuntu@akash:~/hello$ blkid
/dev/xvdbb1: UUID="97b5decd-673e-4276-98bb-bd02597372a5" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="1e1e7857-01"
/dev/xvda1: LABEL="cloudimg-rootfs" UUID="1127d3f4-3de6-4e02-8705-713269caf74d" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="e8236a68-6bd3-42a4-9e96-54b36cb5909e"
/dev/xvda15: LABEL_FATBOOT="UEFI" LABEL="UEFI"

```
### to check fstab syntax
```
sudo findmnt --verify
```
<img src=store2.png>

## AWS Loadbalancer
<img src=lb.jpg>

## GitHub
<img src=github_1.jpg>
