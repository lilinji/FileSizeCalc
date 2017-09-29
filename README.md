# FileSizeCalc
A small Bash shell script to list file(s) that are over a given size. User has a choice to use KB/MB/GB.

## Introduction
As a Linux SysAdmin, we often need to clean up the disk space. And for that, we need to find the files that are larger than a particular size. Lets say, we need to find all the files that are bigger than 1 GB inside ``/var`` file-system. 
Ofcourse there are commands which can do the work for you but my script provides an abstraction by allowing you to only enter the size & the file-system/mount-point.

```bash
root@shashank-server:/home/shashank/scripts# ./FileSizeCalc.sh 

Welcome to FileSizeCalc()! Enter your choice below in form of a digit followed by K/M/G (in caps).

For example, if you want to search for files bigger than 100 MBs, enter 100M.
Enter your pattern... 100M
Enter the filesystem. For example, /home... /var
Great! You chose to search for file(s) greater than 100M in /var!
Below are the file(s) with size greater than 100M in /var!
-rw-r--r-- 1 root root 177M jul 24 23:30 /var/cache/oracle-jdk8-installer/jdk-8u144-linux-x64.tar.gz
-rw-r--r-- 1 opscode opscode 101M sep  8 03:39 /var/log/opscode/opscode-erchef/erchef.log.1

Thanks for using FileSizeCalc(). Hope to see you soon :-)
```
## Usage
Just clone/download the script & make it executable. Run it as root/sudo since a normal user may not have permissions to access several directories. See above. 
