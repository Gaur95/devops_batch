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
