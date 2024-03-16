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
