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
